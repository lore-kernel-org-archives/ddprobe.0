Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48376156220
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735629354; cv=none; b=Hu1caC3VHdx/xMKiu+h1NpPqBUe7YvEjUMfiSiYs2i+3dCVqK4NQmLCn8tHzszPm7NocG5npTEIPYVCOXNgx2MivT5FvWR9cfZScY1UlLkFTqcygngBH0BGAh+1TmniXw/jw31ZLf77TToWktmkiRaySJPYWT5Jqc2wa6klvoDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735629354; c=relaxed/simple;
	bh=mnT5ON5kL2AVaRIZpG8e58UbxYwf3bLhJmTRFGqy1F8=;
	h=To:Subject:From:Message-Id:Date; b=UXAmyFXID4zVxFMex8ezhuIOKQKcPiDhagNaeGdIQMDD+1iZAtNl53UyWvLdwV4yQSvbQI/dY4pJUTZn0WoTC43ntgmlj/LhQctNXFLcBTDzC46xsCf+/4vu7s9A374tbTCzSr6ycuAgmopyhkNzV7YuCVfQIgUZ+TnbUeICXP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tH1uekj5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tH1uekj5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF332C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735629353;
	bh=mnT5ON5kL2AVaRIZpG8e58UbxYwf3bLhJmTRFGqy1F8=;
	h=To:Subject:From:Date:From;
	b=tH1uekj5nVwi+j4Ig/HnQUE0plR5JccEp4nOVYy3sH1wG2BMjfCgIxLhICA6FkB3/
	 9PoR+23EMFkQA/yzreVa/6299pDCZFEFP3Rv0A82NJ4g8ONBo8Jp9PST+okn7ezmsf
	 auADGUOVOtYYt0h8f7ccYKJnfiDkh9g4g0kBVi+ESVVjIpQfdssw0jPQ4cQoBNKhYH
	 1fq1QxGp51fO14Emw4bSY5cLr/48fls+43ArCrs7o3npVK62HRjwV3vtOD257VEIHD
	 xI7sBc02d0z/U8IDvD0fmROdhV8kl+ZATIrSqQafPTNowv1e5FAbVKPDc5dzAIx6FB
	 8kGti4oyH/4yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B640E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173562935361.20089.17241545587252454292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54a5c662b4b17a6b4ce2931a8471332fb754f02ace511c0d0b6a392f4a6793ee
Date: Tue, 31 Dec 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735629353
