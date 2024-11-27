Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23194360
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732671954; cv=none; b=khTWIlwER3U+xfY2nbhy6REeXU1jSxSkFnUEJYug0wUjs8HmMOGvtwQWvc1XgL8AE2Cg8ENRLIwj3vCNNzWkw8+LPm+pgz1N2/bFDGpMSlche4OQZCzKx94el7t9cRIt1YVjdQyD9LtCpUfVQCT1krafHIFBglmsr8aWKjUUD90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732671954; c=relaxed/simple;
	bh=Sl87xqb3NYfxt047ickMCFdJRJDwKnhX4dejj63Mwi0=;
	h=To:Subject:From:Message-Id:Date; b=kwTEfnGg15jKt4oaDFbpRPAjiVlKfdSXsE3ll6maeurXJQpECqOwr2bw4CJgXBrNM2lpm9J+x1EhAMS1DTGOfNm2XrQay2dDWL32tdlj6UFKlCTc6VdgunGOqmuOAiT7/tF45Qt+ZkHFs3DvTrY844V046deWg17oquwSGyEzNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qxtvGZsO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qxtvGZsO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0487C4CECF
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732671953;
	bh=Sl87xqb3NYfxt047ickMCFdJRJDwKnhX4dejj63Mwi0=;
	h=To:Subject:From:Date:From;
	b=qxtvGZsO2YcqE7jDOSjS0Tm88Vwd187rcwLfP5SiMDvRs6YATa7fmESAO7Yi01eSO
	 JzPLCTdrfXity0DttmZd+I5S7MpoIm5vfX9q79qeU/XYAQRcUOpYN5zdToss0FLNWx
	 JqFA0p/gMVYGuYJ/fGjyE3DAheRo8ExWXtVmqt7lcakbpjBRr+dpXIvAUqbQi1Yidk
	 kdlCRXe9pzBcad1wAleFh0kVCC1yduP8vG1a6CG6hl71qzTA89F3pKUd58hIX3a41l
	 1yqsmeXi078PMK874kEmOshAsWFDrm/vQXXSWrBTKN4uY3Hudhox7ZMD0o/W0+u3Oy
	 ambum01teLU4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9169AD66BA3
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173267195358.18878.1550770684732282594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bed0785ef00b80446d09e8d9874abbca5b9388444e6fe6016808d9bc63aa8ab
Date: Wed, 27 Nov 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732671953
