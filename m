Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E06C1DA0E1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759571995; cv=none; b=Ccuq/pnWba/IkjwJVnRiw+hr0AIO6kHiWV2gydxt5wXhVOeWIlMqtpErMpkltO0E0/bH7kRqyvxC/ZKf9rY/OQhY6ASQWIl6q+u2/o8/psHwhqp68D96oO5Oj5A9SQ5gnW06+NIvMOtbRstauy36YRZQTPVcRX0+QMLBSjFN67E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759571995; c=relaxed/simple;
	bh=fk7Y5ZgVznoLdbLDPyLtW78AtVb2K63ZhAJqMp2UXAk=;
	h=To:Subject:From:Message-Id:Date; b=eKEYlTnjLlDXnqmJNpliXeoA1y11rJYIe5XX1coV6d2x7EeL9TtwrOQzfwLvLthh6daO2yObL0nQI5T/QFMVFvbEUDpEoKh1WZF4FoxTCUaK11+8XOkigmgAHlqmLa6HYSEC/gcz93HAzNgM+f/r2qGZ8Y9e5IBIGOj0nDD+1sY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwcBJj9v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YwcBJj9v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31B3C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759571993;
	bh=fk7Y5ZgVznoLdbLDPyLtW78AtVb2K63ZhAJqMp2UXAk=;
	h=To:Subject:From:Date:From;
	b=YwcBJj9verAMEYY619mBvO4PIyv1TzPFxfvf+aSAeQcmutWZNUqkX0lC0a0TdXCjr
	 rpkhBLNj0hvyBN1de0Cav9GtekLBZQsfFrx0CqP7IV6PLxDJvkXoZ2I8G/ls1WoxXB
	 UzMIk9kYZ4VNFInR5IF/rE6g6b5CXCdCTPJspsA45X8Oh8nsQCfQ7cf5JFhn2NslLV
	 PiShZ3L2eeHuDPiEFM6H3dV5UEELn4n5I+6K3K1L2MPytL9tc4S0TdK4uAqzbaXRYy
	 S6T2YYUDtfC8vDyyXHDnWThJP7sv40DaOMjma+Kf6dX75Ph/4vDrB2f4bCoi738Ne9
	 3vSBweNeS7WqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A7BCAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175957199357.28329.1355233053437179038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e08e876a779319a1913e628c9587588ffe9fd4a355505a25b957db6a1f1b4b3
Date: Sat, 04 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759571993
