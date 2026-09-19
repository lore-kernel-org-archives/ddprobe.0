Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5326337996B
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789800634; cv=none; b=IZG06xUiSJmxWVzEOWGquYCZR0PVTuqh5unK8IvglHETEv0562NYlCspVMx0PUVhpO75Woh8iqf+rmJqImsZ7ZnKd2Xr1MAz7q0wHnG221M/vwXgC92Gb3JClFH7SEaEUlq25TuL98v+RTPmzYgHGe4h4tNU+blxGHqfLqKN2lE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789800634; c=relaxed/simple;
	bh=u33jjikS2UPKS94ZdkTewT4pXhLHxw9gG4r9Fp3RbnQ=;
	h=To:Subject:From:Message-Id:Date; b=VlTMqwS+ymDDuFu5es+Q0RWWJXaSL9fotrTUytfUb/QZJ4DhZEQlP6p0MS4SCfKK2Y4P8b3C34ZxXtgMnP3q5Dmxq4lz51MBFSprPRipYV/u8Zc2rBNjKRn5FLyew7v9QtttMW8FGVpR3TMBoNnW31zkQz6ge6Jhu+3bsUlx//0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iOZSQi4V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iOZSQi4V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDAC5C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789800633;
	bh=u33jjikS2UPKS94ZdkTewT4pXhLHxw9gG4r9Fp3RbnQ=;
	h=To:Subject:From:Date:From;
	b=iOZSQi4VgD6T7SzxGejfZ/G/WE0VPG/A7aIJh0SbTBv/JcRqvTVejUzFjJ0lRWmKd
	 8XN5RpvGHlkXiKAGuzRBm+vm6VbvTMU2ttoFnE+zmU6l3qoQjaXIoHQqzqv+j39WXU
	 wcF6PXmMZ/Xc6Y6sTYSK/Ma4RLv4TMNe8BNDgJy+0CngdnHN2VbvK/pV3DaE2cda1W
	 7iP5jzsk2FCaNGAZJqyprHFpt49fE8VWyxMBg+aXBuMAZaZe7N2UtCOPuPufVmLkvO
	 hWsoWCwX+jDUSzxiM/LE+shxWpzPtAB1FhrdxRknAZAC/TI9kEonU37MVTN3QOdR7U
	 +/3Ky5WnG3mQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFA9C982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178980063369.3544.4580900352317312685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 194280395432da9ed5c1bb2776984775906c6cf39d9257524dd1419809a2a0eb
Date: Sat, 19 Sep 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789800633
