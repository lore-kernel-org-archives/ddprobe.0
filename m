Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343221A681E
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 00:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782865714; cv=none; b=DQTgIo1EOOqzd/HKZqDIj8+LkVCPp/77PNGCw8csPqAOFd+ufKbRri09wX1ejCVNrvh+nO2uMXWH6yQuS9Qldl8WmlRAlKeCJBY7sL89C9vnYwD8NCLycxioV8rywmBElitkRAJXFVB0PkZHK6/yy5C69FsWSZUNgU4m2HQuOMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782865714; c=relaxed/simple;
	bh=Osw9tjusNHWN89/zCnY3rPANxx+DS26YLME4LwooPqE=;
	h=To:Subject:From:Message-Id:Date; b=T1X4xdrF1KMwdILTS5SV7ELJXwhmaG7E6ipsfuWqICQKKYGbyyGztI6Rsioh1Kd1FObStFp0cchkSBoL3q6dl2ti3evZMQ1e0ixbiEwsOz3wmCrXx3XIsdFWE6zSmpeaS8Q1kHXkjaqxhzuOF0T+B4+uaUSSGBj90btwgA05BOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5GcUNck; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5GcUNck"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7E02C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 00:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782865713;
	bh=Osw9tjusNHWN89/zCnY3rPANxx+DS26YLME4LwooPqE=;
	h=To:Subject:From:Date:From;
	b=s5GcUNckYx3ZEwE/LoRCh1Hg3IBe0v3VjlOLRX6a2KKSDRqhppjUS0csX45GwOnr5
	 /SCQm6Hx7LKbuYMcQyzXKZFJAqzG485cmWwPc/00Z6/DKy+yAzg3fFR+EuND5YYnd0
	 kPBbHf/F5RCIoFiDOvh4PD0iAFfbkswbC6gm9AQBjpRcEQ2zf/pPxDiVVT/QDzNmwD
	 JRsWzaZI7CwBIKqAUJkivE94h7bkNJLCHB9WGCtDU39bJhRcjT2Uj1+U53ZOMfk/c/
	 SR+iBdNc+huWI/h6yWEJMa24aMhefY+h4i0xl2v/bzmfoQYfp5YvpnijPyxi4YlMv8
	 VDsVRGK4G3O2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD34C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 00:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178286571368.9490.13237091608925813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d80467d0e0c22780eaf2de1f1e99eb5c66024b44cd9c1ab773bbd6c3dab02e2e
Date: Wed, 01 Jul 2026 00:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782865713
