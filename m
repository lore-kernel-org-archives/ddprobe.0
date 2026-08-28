Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3C41E260C
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787890234; cv=none; b=Zj7Jay7gokUTmOtOF1EGhjqVZEGjh6BDl0B9e79PaWkQFXwwBqIq+T6huOywIbE8mtxBpVXQ6cSde06ySEU4wjCgAqJba0tlLE6rpGqK0ZRpo53wkhgsq2IQqfEFjz0WoTVqNcW5Ci6DQIs4yjoTJY3U9qQbY0BKgYx31soM0eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787890234; c=relaxed/simple;
	bh=+2SyKDQIjNfrwZFKFd89heDXl+PYxoINuKTLEV6t2lo=;
	h=To:Subject:From:Message-Id:Date; b=BjxubsEIB22Cpo0ju/usJkf3+sU/CG5WGm2f/se1ncExlBJ0kIGUCabiEcNv7E1NvFh34kV4oTIj+90HhqStAQCc7Q9hC5fmk/7oSazxECMFPIfazSdpq6T7Y0ysUwKbkp0GEClXuFan2wEwzzcxqRXOltVuQS+uV8uZIGVq6Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vt6DSNbS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vt6DSNbS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE41C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787890233;
	bh=+2SyKDQIjNfrwZFKFd89heDXl+PYxoINuKTLEV6t2lo=;
	h=To:Subject:From:Date:From;
	b=Vt6DSNbSAhAoS3tZ/MR3pmXDQasGuev16eywXg+zyI2k7G8Krc52H/22AHX7x3o0o
	 DCdOuMZIcvrhdNhf0Lth4pa0YMRAk8jqT7t+vp9X2M5xWcGENdkZcPY9hYXe29HlV8
	 hxhh8iIGc39UeZuLJLl8s8PtT9dGMpE7c+ojXkczOhwfr8AWNgS18Iod3AjiR9elJh
	 E4hY9+vVkC9F8FyjTwXFlfKqOLBD9TafAixAZTAqAaYy23R/tjaNu1ueli5qj5DAFj
	 jeSNXTROS441Eh39Z25N9Ahj1BGj1JUWD7afTx0FC/+jjMbIAkr92ooDL3fnhi69is
	 deC82ZlHaicWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3E8C61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178789023368.20624.6776761474065860213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69af2f62ae99b7a25e1cb24a7276680e4526a0c954b71d49e22a8e700d4408e0
Date: Fri, 28 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787890233
