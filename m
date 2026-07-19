Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE213A3E96
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 15:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784473714; cv=none; b=EY0mXsehZXFJ0Go6NPDisELPoT343ZlW8VBGchiBl2g+KD9qH+U5rsI7T0MvDKv0Tnthy8C4XIn4oUM4q559rKp9BpbzH0FF2pHtk+Q5HUOsuRT28kMhvnFZ34Ikw7qPLijOA2VQKbCewareXsMxq5QI0otLXmLd7AmyDHY47LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784473714; c=relaxed/simple;
	bh=m/dFHtjVta20sVRHveDeeiw3PzkJCo2kKTNIJpNhpNw=;
	h=To:Subject:From:Message-Id:Date; b=t6wDvsGErnEBVlZwCjgVdSrVpiCHpD0noZ6FxtDCHBLzcezw979ofNEHIQGCz5SOq4sTevnwPkDplmo5pT90DxYtgDdyA8Xzbsf3PcmwkKpP9H0TQX6GBKK4qjJ9l7dWAHucEzRiHcwOSeaiNyuUH7pAK7GP+A946dehF/l02Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdH4W9lH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdH4W9lH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FC0C2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 15:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784473713;
	bh=m/dFHtjVta20sVRHveDeeiw3PzkJCo2kKTNIJpNhpNw=;
	h=To:Subject:From:Date:From;
	b=tdH4W9lH5RBXya91UC8pIcqdFHkav2YUWVySnIf1ejDcFn6ZlCqi0Vu91B3SDPWyD
	 +sWV7AL4VUit0G5U8gbw/HEg/VeSnu5k4l0gCWOtQdlIHMusSbSYhNT8GQRYobOJV6
	 8RvyVV9qTakuFmyIFlZkmnZnVNWUP/AQywVi8OkutEDsk/+5OC/1E16KptZ67b5Nxp
	 Kta0pPGWMOXt2zUJJVeMTD0CJBqyRdyu0NIlyIRylJXalr5bef6tr7H8VN8NiR+NWO
	 V9Ff0UWbh7qPNo7ZFI5uvb8fbVYMlUC37nABc+k5N9jID+3gq5dMuUb/5yGNif/A3L
	 Qo4p4z6dNg9rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19BAC4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 15:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178447371369.28683.1750010233666581987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1ad0381a684e05e0d32d29f57075c562e62b387422559bde5204056b0ee180c
Date: Sun, 19 Jul 2026 15:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784473713
