Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C51C31A55B
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774517094; cv=none; b=mGJkYXbkneDSWcF+9aaLiEEyNGrR95VpCLzxrqlDHuZs/UuCPpX13zgfQmAiPWNCP8dbbVe2OZDQCbaVwvwF9B0eLPOy/b9JfRSTnn2GSMtTUCkm5CAmgimE801oq24X8dmkD9qB6ILoA6clg6Ax2PAVifPwrRfPM4EBZAjmAa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774517094; c=relaxed/simple;
	bh=rQ6e/XgBZwZMQBkj+s6N+RhMzmZnVnZKV1fftVzaCy0=;
	h=To:Subject:From:Message-Id:Date; b=m8pNU7JDgUXLVTcwjXqp5qchoXn6C7GXyo33RcoWhBJqTEdQEGwuW8G1JmlY2eXmln8GrxYbnljbsooHojbmHW1pyW0RWguxce10azwkY+lILS0QzFkcAivhDIW/jmzRZBne9bE2pEQEt8m2vwv8XIqRKOTp5cd42CixNAm5HQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jU9lzjP6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jU9lzjP6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A087DC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774517093;
	bh=rQ6e/XgBZwZMQBkj+s6N+RhMzmZnVnZKV1fftVzaCy0=;
	h=To:Subject:From:Date:From;
	b=jU9lzjP6FokhI2BKHdQ1KCMk56cAyqndmO+ISPzdSXGtZI483DYJ1fUNtMih/EsU6
	 pJU0eXFa7NwS+AAZz3Uy+wKsq2vrHuA7SeIs7/mXg+d609qX9tb29BC6tG0jeDB8gu
	 CPwgH7DqCxncZa/mQwxBPHacB4DUIE2fxA8ASu35ExBdZ2juF0NyWSItAmL23njXxw
	 iff3j1HLyxLroLl4LH61WQB2sfIZiVGPSSL/E5eRR8TCNlswkgcHb9QcOL16+3jnwP
	 E+sPi2L8KikKU5JWwmK5iS51zAgcrctOR+HWyYIu827VYn/9C5IotaIe9O1MQrFbIZ
	 M6AbndPNQukQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C26106F311
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177451709358.17428.18180348026400176205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c202b9af7eb324021a52aee2fc732cc0efab10560f703eef726ed008b685b2
Date: Thu, 26 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774517093
