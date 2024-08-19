Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2533418950B
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724090754; cv=none; b=hqw3j3a4Ty7x7BW7uHKU/tWE3304oa79h4f0ezxyT+/PzH/Og8fCMmvfmuvIH8wQC0XapP0XRNanrWELVbIh6DYWsDgKcjhGlymjyAdA6B9J6H4ElU5yJyo06D4epJ65sZGC4RLNwmM0WpS+VwqEX8ASiCsjvB3Ay00PYW6lYlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724090754; c=relaxed/simple;
	bh=5q0P8jk7U1NJLdFdRAv624Kll4qw+tlIHLGhjij8SyU=;
	h=To:Subject:From:Message-Id:Date; b=n+rgpa8LJGk/NmGb2eUnXrxqstM2mB2wYWJ7NAFLmJQyT8IrKNrt5nWn6MqS0vqOKuwJ3J7abFeJJech6867GDrUjHlSZzc66x+Nxf80tfXGA8MMqPOiRl/kMUtXQvJT01yOLxASuYlSU8F8gOOLNHIA3vL/qjhZCGkyEIS9Vg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TyNO1D+9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TyNO1D+9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC64C32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724090753;
	bh=5q0P8jk7U1NJLdFdRAv624Kll4qw+tlIHLGhjij8SyU=;
	h=To:Subject:From:Date:From;
	b=TyNO1D+9+HSqhqQccyFdgiZv9I9tTLWVefQkEg8ow2MqZxV5faTdYGTQHiLzWuYhk
	 O/1iPHiRlwr/OfxZAvln8GFwSMdE5yIgNDpEi3eIgKKtSZ+vQ4loCVfSNOY+Bg9oep
	 gaRj18ZTMRMoLYZla09Zr/q3gkmTKvPmi35khNXJTBE+/9blWMh+8JCINJCsyp7zPc
	 Sn4DlcalSker89nNwqEcCRP7u3UTxU//iRlf/wWux3UzQAz8jw3sz+yKIzzOP85eRg
	 5FgK9bRePJvCbol2CYFR7JaBzt6T4PlDoJHRW2Jk5HbA6xTRqRZTjr5LGUbUkzJdyT
	 Yoab872BDnvrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99473C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172409075361.12310.11734532364923942036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4986474e5a980d3062bb74a50542c395934d558cce105551fd7c4a70c4b3fa36
Date: Mon, 19 Aug 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724090753
