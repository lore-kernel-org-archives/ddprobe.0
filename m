Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A121154BF8
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 15:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715007743; cv=none; b=LfEvNrRgiECbsyrlpT3+WEaktkituLTC8aG6PjNtHb8mUR2rsl/ETwRAgRARDHWOvWv4eryxPEmdA3cp5IA2CvoyGmGXw27uhmXIPyieyH9c7x5Q6Zn/Ln4j5b9RX+dTB+eUCbU321uW/W+KphhA2UvEZ5TmQk5GZTRM2GzwpYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715007743; c=relaxed/simple;
	bh=dAHTarZqkfxtBk/dyZ3xyavTfYBvc/3oSkZA7NAdGz4=;
	h=To:Subject:From:Message-Id:Date; b=uobY9j7EtrUCC9q4yspXZ/Qc9YXpOxpSFN744Q/C+eibblm26dsKJCraPfw7l6YksLC39DPQcGEJBqCEYA6A9WJSeWftaKBfdAyFiYfG3enj9v494xsLMRB1U72MTJCRS9wc7jAPboLOWxr4XxDWTpTLPSV55OFB1c0gQcTqfHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hAdoOzSV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hAdoOzSV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D677DC4AF68
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 15:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715007742;
	bh=dAHTarZqkfxtBk/dyZ3xyavTfYBvc/3oSkZA7NAdGz4=;
	h=To:Subject:From:Date:From;
	b=hAdoOzSVJj8aVmP+UgLtJ8Dv120SQz6GQBahCAyv8W3Z3AXxka2lsVkOeKKp8KJmZ
	 tluKJYVu6Hfi3LAKRugUynsR2z2YmaEx00TAqUZw/p+0ztg41ii6q8hfV+4WiLAoLw
	 Q74amJMhkTff2TBgkde3yXsPFNJYW5RNkkGEMrVdNcruuCDIavUKDQAKH6PKn1mWP2
	 /abHlxJpDQBBD2idx1RTvbg51CJIj5sYHedgO2ebQTKjVHiqEjgYngMstuyQZkorVi
	 hvJTUFrHvzrqoP738ldH7djOLHa9MuMzNcsg7H2L+j9WBIbqzkUQBhiHZUkIFaeXMA
	 Y/COi45IokvgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1B93C10F16
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 15:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171500774276.17658.15892124910889460472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3db814da910f0f07062f328ebaf200874a00991527709ad5742859fbc326913a
Date: Mon, 06 May 2024 15:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715007742
