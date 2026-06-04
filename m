Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FACB225416
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 14:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780583074; cv=none; b=pwF8O3GbtxD6CRQ9uTB/ZeKZ0GsvN4UbW1s0MDIHYoJBLxt1QITMuZ/D8p+TZt0gEg2KG8kzrG9Xa2FxRHnb/CsyHBo+oMdU+TYGPO+TcTpSOP7Yn5RfWqa86oTLt8f2QHlgQ+aax2Uv1WYgFGqbVXrRerdu03zX7QZCC9psOCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780583074; c=relaxed/simple;
	bh=+F8suyocSF4hUxFZhKiM8shLOzRdzrdB9rjyQDLRyd4=;
	h=To:Subject:From:Message-Id:Date; b=oFhc1TsO/ZBroo4vyVwaCZE/pHJDVAFboM8Zu1HyRJxmHfYQVBE4X26Phs6rw0SwuZlGDt/n6tkWCJppva/1904t6/GZJpN7M7+mzNbOckcWfcpx7B1EjQCYi+EKqAyxtygnPTXtvdVccXoSBSFOSLQAn5Pl+pixIFZfELmhWTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7UwBd7p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7UwBd7p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCDF7C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 14:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780583073;
	bh=+F8suyocSF4hUxFZhKiM8shLOzRdzrdB9rjyQDLRyd4=;
	h=To:Subject:From:Date:From;
	b=O7UwBd7pd3SBpDFAYcMMDWvNp3P3mgjqy1+i1WQhvE3KSvrYQ7j4s/A2OqFnhxugA
	 /Vos9fvIdFSFEU0+MbxyttSUW78gUiMtxpIiTtolCIyBxHk/8YMgHwMo7hSXZbUUD/
	 f7FvnbsSJm/gDjhRbi0yfESVIkVmF4Q3GAPf365U0s5FurvrC5LaKqqKWhrpkW3Pjm
	 YRaOZum4qj2NGq4ZlL/gRS2fhd/yWCJx41vFD/D0xzUYldPRJIgKXvKniYhmrb4aWH
	 aBu5q9YYOroRvrSxQ7EYlgxjPwhrKeIdFHRqpYxnviNRs5yBy8F8loqckyp3VRyTh4
	 oheQPX6IpX8LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B47DDCD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 14:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178058307372.8202.8686676974555014973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afd39454d901b0371ee76311e49255345193c4fec0d426d24e2194c20cd94a73
Date: Thu, 04 Jun 2026 14:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780583073
