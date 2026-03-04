Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2578D6FC5
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772586294; cv=none; b=Dr1x/k/SzAEvtw6KxATxSxNcNXynzX7hTnc97di55Tox3nK8JWbmGVyVYZKduNevk+DvZPtnZOX8SHqkLtp/ymVCmMUV7woNOQDLls+5+BTYmGX+Ke0e9g5Vyz8vTnISEA9yk5R7ZoIP6AU8Bh67dhVbTHA94zt3yRr9MnSB3RE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772586294; c=relaxed/simple;
	bh=E1JgcjmbhdAwpaA62F12qjH74+BONZmHlniYRWTMfxY=;
	h=To:Subject:From:Message-Id:Date; b=rPJx8s4y2DNo/lL76mBCnlg86Iityq3H16TFzUdLEFXO5rIRfB90n/+aSpy/7l+0OhlJg6k6Bjn1BzQpRYQkyi2xmum+DL2BF/gEfzEchG5HX7nJBx6E2CDHpkWgEiChTZm5avhd/Ww7RrAmCE/0jz5+1BJDQ6lO3h/3MsSKAWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mx8qi+Ym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mx8qi+Ym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D63C116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772586293;
	bh=E1JgcjmbhdAwpaA62F12qjH74+BONZmHlniYRWTMfxY=;
	h=To:Subject:From:Date:From;
	b=Mx8qi+YmfR9TU0IZXH4PJOZ7AurCy/vJhv39D5xPKryf7axOVhWI8raoihIx3A58A
	 NRwwAy+YAjeLAKMxgcEwjpp0RrvLOchp6zfIiExniM6yQLoHs0lbnQqXmGkTOptww3
	 4qFGPgSMHJpoMtfGaHC4uZ7QUrTMg9XwbpqyXGS8+DDC1+LnhEToVbVIkWQIMHDbdB
	 YMRWIbOxoX+BIHP4RL0A0KHJI/9PY+VTIM4IMysTFeMNIoM3WJG3wmgfRDXloVN3JV
	 I6Iepa8rn4Glh75xCpJolEzLdaFVHwL9Tod+QKsMEoqnK7mwrQKI7/nXCLGVy529kd
	 cOC3j256xeEHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD9BEDEBFC
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177258629361.5369.1207862531021697649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 814dd08f0dd70e5aa144a348ed2ad42f3eaef09fb1f667f3ba0f9d2567e6a130
Date: Wed, 04 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772586293
