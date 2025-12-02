Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170F722AE5D
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 07:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764659574; cv=none; b=nqcpac1D87fZ55wvcTP1j0Ni3JalzpkGViNGgs4nIapc2CJ2ERQkO5vs6QUhaKggL9ZyHYh+uY8SGUsv10DysqAPTWJerPJK8RxnWhtuGdLVQya86BFkbShGlD66ZQgCmENEar74gisdUJV35UQphzRAOBncPNoB2ypH81B3NhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764659574; c=relaxed/simple;
	bh=IVfe+ySD9sB4PDb/20DVAzZguksDdt2RhQuSx/oeM5g=;
	h=To:Subject:From:Message-Id:Date; b=ha9vreqcgeFwsZIZXL01ACYMxiyrRAdL6qhj+5ik427JAww5ggD1ZOV/vDmz1Camjt6+FdaeLKko3EU6DtgeCivqPxWF1//HuvSuMJZlaG35hqE26BwShNIFrF6craaRk9QsNZogQ5GuCkDb6nsqQ8ax5oBa3/yczOJkt9O7KGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=blH5w2cl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="blH5w2cl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3345C116D0
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 07:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764659573;
	bh=IVfe+ySD9sB4PDb/20DVAzZguksDdt2RhQuSx/oeM5g=;
	h=To:Subject:From:Date:From;
	b=blH5w2clWae62qaPqWCkMnfKEOmp/BCc2F8H9pBanXrRa/Cstx8l+FavfR35Px+7n
	 sJuQA30oLKR6Nz13hsEf/2r05/mH+2f1XmJvF6JPICo3apqxk2vNOZfhiSjnejf0z1
	 TSDx4+clo/1Cg56Tnd5TkjuY8niuizHvAT/n9URpEM/ExAsAZUeWF/79Q2g+l1lbWY
	 YTk79tw3FGd7772qlMIQB/+0cSVUk4D2zBP8FXvux69+r23VJGKuhBBRrHjxUrGpNf
	 nnc1CXdBMmOWmsX9eQpasxGk5X4H6IA9nIaWHd6C263jSAhc1R35YGGca1OpyfRWVV
	 f49qh6zQBaTGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C99CFD376
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 07:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176465957358.9348.5484492479534050886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6979fa4d7388306491888d3fd1509d9fc0a5d962ca6d6caca609a68f296e7e54
Date: Tue, 02 Dec 2025 07:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764659573
