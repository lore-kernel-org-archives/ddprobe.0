Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8D6B221FC6
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757611793; cv=none; b=EQ7wHT0wGweY/IIFmVljiRZoSQCZ9synENatqextclkFls/KuV+4jsPWkGW7L5slCFG7sykOMXWoqZ7CqOqL+fK1pwSXuZUijWrSka7xmXPACrbx1M1evdT+0IKTIKrV+o40zXmjkKJ+4LvAYMjeEVBA8mpmOSDJkXsgYwCRfTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757611793; c=relaxed/simple;
	bh=x6V4PmAL8iyogrAmX6YY0HBRrVFUXahZQDtNCeJE7P0=;
	h=To:Subject:From:Message-Id:Date; b=RdtIcjK8W+VDiPO1I1wlKqKF8qDrEzBTVFUpgeTN9lCYZEGFvz1ysxrWmQjhcf1XDslINo1C+jNDZ+sOoIIe2cGy4GMF9BNKlq3hpkLja3XfExU9x0kcJFTfYsoR0Vseb0A5490REk4kgpOoQLmMioQUCqfTWrGtzvIHKa/poak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TiD9dVLA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TiD9dVLA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3FFC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757611793;
	bh=x6V4PmAL8iyogrAmX6YY0HBRrVFUXahZQDtNCeJE7P0=;
	h=To:Subject:From:Date:From;
	b=TiD9dVLAYPsEoUzUZj3DFm0RDb0Rn8+fNNv9/Sv1EzovDUY7f0ocCrA49ufjiTmwZ
	 qLfgh0Ym+KHq5igJ1GSnUP+D2HDfQDGLyHcCpx/8lGiCjfIrpRSXw7Iak2x9H+JVrj
	 mR2HPRW1nlJycB0u3J2FulFj8E6T/mGrUE04R3o/R9bRkUiz1wXvDN+hAw8uzAJSDi
	 k5yOlSSPpfupkhMFXXlyIJ6tZugVVeYEDSnF48w40Zq6Mmk5v4BL3G/nYXOq4nZdGv
	 SwXHL7i7HKBOQN9PSd4YeWCYm8XqiWo7Md0cTaswwGievYECSdW580gOGrAjH6CD7K
	 lSl68r/Bi836A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9040FCAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175761179358.5173.17420506379017955003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bc959bf0df53a6819ad3a73c4071ce35be5c8edcfbe9770af1948fc27603440
Date: Thu, 11 Sep 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757611793
