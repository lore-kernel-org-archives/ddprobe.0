Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A691DF751
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766771634; cv=none; b=kGb2f6fwHx4FT5Peoz1ZNtUlL64g1n0MMwzN+5kCddpgc/D9vfi5Rl9L2F9fLmi85qgrtxNNcRjO3uaJiX+UkXtS2eL6K1Cq2h0M7KKs8KGf8Q1IQ00cfM4n3lbdm9V1khiZJxSUZfzJQhtygIyY6p40i/B77KfF3uA9dcs47X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766771634; c=relaxed/simple;
	bh=8RTDovdcr2TrGfHSvOqp1gCU+FkwNqoyiFnw0rhE/fM=;
	h=To:Subject:From:Message-Id:Date; b=OVj4XWEgJTWNIe2sm9Ne3IQW3uUeCLE0cZbGLuMWjeE6jB5+StCzsCSlFI1XblqiLgExMIf7LWoCBBtwMIsbIS8g/a3OcI3i/9GivMLhfod7MWdbKTl6K1wzjgCIOcPZMLcdINF8DNfh6YTVJJkepg+4F6Di4u3r1f7Go9N+8Xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iYl0Yit+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iYl0Yit+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCE2C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766771633;
	bh=8RTDovdcr2TrGfHSvOqp1gCU+FkwNqoyiFnw0rhE/fM=;
	h=To:Subject:From:Date:From;
	b=iYl0Yit+69lFthvHIxzNXDw41+SbTwRVHf2knvt0m2I80MP3vNWOZrOMC819QC3mB
	 R8E4j+lUHmy/of12XB8fAJwcwtOz9r3MeVPL26HR6GA3HTSEky8Je2MbATkOtp3sL6
	 m4NI/1jIz6g+Viqkjz+hy+hbNCGQOeUhiZkXNYiL3/ZywLdtevQVc4zUxzlaErj5wT
	 oBy/ZWChadyFfB6QoRbBF9CP8LInoQ3lhx187jOvXeOQpjUzMSHPIHfgOh0NzR33HD
	 pULqrSYDXpmN0N2Z53klRrx+BItJvKZ2jJX/2v7OX+WBmSwfefve9RBmUw1iAHzddX
	 CE6LsU+s8OIfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974C6E8FDB0
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176677163358.22026.2256642147832669638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c75fc3af2a7e1f6503d901ed70ef3458c40d62205fbc69e0600d68993c1c1d1
Date: Fri, 26 Dec 2025 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766771633
