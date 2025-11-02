Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404D2FBF0
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762067994; cv=none; b=mVmd2RhA7+0SeN7y/Mg0Pp3UYF/Gber8HPG8AUR/37qq9YpN8wjppvY0nUMQydiIk+XmKwwVCW3Ek4bGaV+Yj3t9VCVGyXRtkydLQPu4uj1DmVjyqr6phxkVCV+ddcb4WETD4LSeufrvMMCgCZbpAkcpgFXdF5bByiUeVGV+6Is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762067994; c=relaxed/simple;
	bh=xs5Uc1wNsQ+KiBjqBDlsR/961Kx/oxwKddUazGNpbjI=;
	h=To:Subject:From:Message-Id:Date; b=KGbiHwsKqsExjlTgTetzW1jYHdqW1607hQ1HroLatV/GyPwnXoC+H7hkRfaGM06o9MXjSw4B2yi29j4RK9e0ADe1ISD4f1h7BDPocmPl1j/I5f9N/P/vXftiRdbxeFhoDTkK+mgfc777M1LP+/ZTi+5B+9I0RElEa42bS3X2u0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0Vx7LEp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0Vx7LEp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79C0C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762067993;
	bh=xs5Uc1wNsQ+KiBjqBDlsR/961Kx/oxwKddUazGNpbjI=;
	h=To:Subject:From:Date:From;
	b=o0Vx7LEp94fR1OPcbUVRUhF37ZYlYXRqZwl9HhsoNH3vw7lMXS9CXpQie5uf6Ic//
	 7MXq4byKky4sBmg7kSfBp4pwuHyn4enGeJk46vEpsmnIdHfoeZtmvkoa5hMjflOS6F
	 vlejsPJugOUcg/nyaQ4pcpeUTqBHrq10EXWBtWSO19UByVbkEgYGAA+9Lc/1BH3Prf
	 YxAhJt0uFeRnA+K61XnPNqryOEq3Z2vD991dC7Hya7qQ50i0KEIfGyASn47jXLgyBT
	 ozqBv8RAeu9XOErU7XsjXJV3vnldgO+suaifSfOV+NasiQINYfSxEkkbVuf5h+s8hO
	 +OVU3fx9NIcow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93597CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176206799359.16153.15926090447690974242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b86b8001510d6c768d90f6b1db84233ef8596f217510f45785475b1eb08a243
Date: Sun, 02 Nov 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762067993
