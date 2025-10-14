Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3841E7494
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760411994; cv=none; b=QCPqcs/H6kH1yUyvzb6vjav+JV8n6PZ0te05VvcV31Qzwpa8elrDXV7IuvApH+eUC9h+LTjI/nGggR6Vu7hcbMO7KCHRP6TjijCadlqOudsfsqoWVGc9kmt8+Qvn4jZTClfFJc7vXsAfKaEZk1BOv85RDQJ9eKXTualPGzraVhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760411994; c=relaxed/simple;
	bh=6nMRnP0IRFQT8KigeJtFYaBZz1HPcSqhlRRQwIMkwN4=;
	h=To:Subject:From:Message-Id:Date; b=ai7TDpgzTjxEths7FVM512ZEJGnIv54WaoXBY7Ybe7Iraxybfj+1RPUAA80WnkBlyy94yrcHJ3V/zhwpL+auHYOnKkrDSaBRanz5PPqs+1ArX3HnqRWbii/YyeEWfUrq/xaqqiTEeXk7up8AjOK1uBCSAiFrNbv9E87PuC6UQaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjG4QYKU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjG4QYKU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6E8C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760411993;
	bh=6nMRnP0IRFQT8KigeJtFYaBZz1HPcSqhlRRQwIMkwN4=;
	h=To:Subject:From:Date:From;
	b=qjG4QYKUsBV07yI1MXZfR3eSCNO4GqwC+OhaU1EN8Ani3rUF9bKAnXF7++lLpqtXm
	 BFyCcyKZMam3bM7/x89aTxt2jrzqc/UiFD0aa8D4r9vP4V6ryrKgmzlJvJpk5DRYBZ
	 pBg3ZOiJCmJ6iKrSesgbOKJzfYh2khboGWAkh5hsyPk/35++yAgHeMKj3+/2FmrfQo
	 GBMH0doZm0jSStj8IeAH5J/tHKvOg/WhZGgbfwhw4PNERtx3sjFj6klQgZWR7tvGZf
	 DXqdcWmuJOVSyu7pOGzCccP29IFDbuQtVCeVOU+4m9KIRtp3AnnoGw2iEHRVk0JBYf
	 1EnQc4oVlvdZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECD6CCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176041199357.4609.3149059722004082516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7152400c262f769267c1a1bca04df312e0323f5bdbc4f27b593142b3258a9049
Date: Tue, 14 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760411993
