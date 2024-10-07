Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FBA5234
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728260154; cv=none; b=bS/hA+BLSJ04jwdkVliZd70jGnylJTNIiA15y82uM9NyxcNx60KRc52qe8APpUtYctMOdD8pF1Tho34bSnMD0OvfPcmSkkoaoeOrunxu8McNwPj7OZ0NZxUcgBPureNSW+fbzHsdpKTE+hbr8Qas8sQt4fHYoXxXqsW+ICTshy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728260154; c=relaxed/simple;
	bh=yFRSjtz/3geZXQMsMLMsdwcSDgRUll9DMETRVGoJgD8=;
	h=To:Subject:From:Message-Id:Date; b=taOqekQ6BPIQNcL2myc81DkF/oNc+UAEG4ejQZPtxfp9fZiYuL0WyKYZjSDncRXjDWip67dV6Y6W9lEvz4RA166PURscoPk0VWXcDeoD79u2QngnOxyqMDhfC94ub8z1pKzP3o9AuX6liGOrmk38EuoVxA/82x8NShKsPt/0Ucc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NrhvfQeg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NrhvfQeg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B505AC4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728260153;
	bh=yFRSjtz/3geZXQMsMLMsdwcSDgRUll9DMETRVGoJgD8=;
	h=To:Subject:From:Date:From;
	b=NrhvfQegsWAUC/m1lgYza9fhAF4MhNRUJ4SeTC4QZK97gNs068Q7pe1fTlsF+yAM5
	 /57gSq4MrWqELSRGkSbll5mvSIgDMJyN56f2bELYXSza/YRM4UuUcDFt7Lfn/i3ebs
	 qFSQ1f1fSRW0yTrpuGnfWQLC1YFBAPtfHSwd6l1bJX/dVArQHjiBS1WKoWjutK03S2
	 RU9Xdbf9ljJzL7dRMJ1CXotwRL7BcSez6gIEiHA1Cz9Z6IoZCMaZaoHBcp3VNlyZ2q
	 orA8j1TP/G+u6Rm86IYBtC9rwbfqsx+9FtMQhJqeZ80tF1+BIyzciB4lxCdUi3vVn6
	 2wE/nmuD3aQSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F6DACFB424
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172826015361.27390.14194830828508980961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42d597bde98ea3bab00bd48224a4ed43926902afba6afa4df899b48348000766
Date: Mon, 07 Oct 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728260153
