Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E371277C81
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 02:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785204034; cv=none; b=ITYxQfS/VHT7WeSzTMwvczXaegZ/4AqmEExlySU9w0Q/BQN7DmeUXY0QvYPnPoIwAznm5atcjdUhbigX5eTsMUwX/yShyxmdTzu+7q6JFrXgvJ8593yhZOOsg29Up6krcW1aam7aYxfpYz5sUrAinSGgQYWjEblSuT6TXwOvEos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785204034; c=relaxed/simple;
	bh=q6wFyFdCD45Z0mk6qV2dUpBIgDbWu/5qN4/+W3Tat2M=;
	h=To:Subject:From:Message-Id:Date; b=e3VmR66EK+q6RlTqN58r5l7XlglUMw3S4QsSGr2cak1Lgz3yAlUSG0G7DnEIcWE2MkFQkvH6feJviJMqciCKlo39/hNVOo6DTFNEIOAcB8KeRcnWFq8GL5/HpHsFqoplVlZJXhzX0neMOIFYVTrHt6gsRsPDptP+7I+Y+acOhp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TiOU8NiL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TiOU8NiL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CE1C19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785204033;
	bh=q6wFyFdCD45Z0mk6qV2dUpBIgDbWu/5qN4/+W3Tat2M=;
	h=To:Subject:From:Date:From;
	b=TiOU8NiLV1+1SEwXgwa7QTm2xyNuc0dXt/DdVEEam3uIzb4Q0hkTVXPr6D4v0FnEK
	 EHkIvWcexjQh7psP1uhJjDg2gqDXEl34EQ0RG3XwYHP6RB1293ie7mi4RTcLmHfFhG
	 TSM2RRjwfohHrdn86QAmdP4lKJY4ihO4MZG8OfJo4DSqgKk8/tAznRc23Pb26QiB4I
	 xFfAFdVR0bqV49P5E0Cl0CpU/HKIIrUZOx2TeYPLzFq46aXguukdFif8mO2HRYQfSL
	 kD8y8XoboPq9fbxaGNRzCouPP1Bn2QN5rTEmCLMiV3T4ui7LpnlpeIE9VeyLl3jS05
	 Mmz//2cwnTGVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE399C531D0
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178520403370.21469.217958756730183330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 206e4b05434c3b433aeb8dbf3fc50cb2d175f3708d68479df60b2275f5656f29
Date: Tue, 28 Jul 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785204033
