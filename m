Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CA814F9F8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721747754; cv=none; b=t2kyTpU79TK8gqSljtmoYHrwnq6ewdD6VC/wgmX8/msEN84hH4Qngx9lv52nMv9v22uEi+bpR5nMAkmSgyjbJSwjcC3Qqnd4m0tv7V/7VBQpMON0DtYtFCkwHhCBlHWL8Tyn0Z6Rg+sxKul4oqeXTUEMFy6mLrwa05kuDYZtwzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721747754; c=relaxed/simple;
	bh=+9nfdWmfyP3nemI1XsJpHzIfH1LsQMQMFtjfnPAkK4A=;
	h=To:Subject:From:Message-Id:Date; b=kZUPeMKBvLijF1yQTJQVMZe9at/OkPC1g4tXO3pO9ilyGBVhYUP9eCumORnTZ7BB/OmPIksj2tulJqnhiFskTPqR4NqxMrRVpLFWyuXJyptfvSJiQaPF4EbyEJzA8KINTaAVy4cefTfrG9xNgdsxIO16YBjPDXBbUZlEdvuq4QU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjhDtCq6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjhDtCq6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFAA4C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721747753;
	bh=+9nfdWmfyP3nemI1XsJpHzIfH1LsQMQMFtjfnPAkK4A=;
	h=To:Subject:From:Date:From;
	b=jjhDtCq6+7e4BHZhx+J8eAGcX8XtBL7ygwl3QYksA+h31kdQ3qPINjmlkI0ryY3OI
	 epWg8gJI28EYFfwHggneMNPIV36Egp8XMLRVZfvk80ZvBoWLTStxYGF8wOWrvSCWrc
	 kBkIDJXlyAPchc4LcR7POiv9LK0HLR9X+VJxuzABS1f2JLAVJ5bAK6m1AFQLD8ojST
	 SH3EAHRYqYPUvXBdOEmYjt66sNlsE+2SUc8JsDsVmFb8JPuIsQ/h/+KjKXme+9qqjX
	 1tv8wsEXmHIf9EIi3QNH2MTTYLZMF6Rnb3HQ3aOv6rwJScCLzFHgxCtnqyvdGGf7S3
	 NTp038I/3cr+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9893C3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172174775367.20143.1641585618576510122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7f99cc9a37e310a780bc0d5846da9d9fdd74ffafcfc6a93f5b422c4462b771c
Date: Tue, 23 Jul 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721747753
