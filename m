Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50928225788
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 04:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781152594; cv=none; b=CCjJ0LMR2QoqIq14g1j3TuCMpLAqtW+UxpXk2ZZcBz2YCHaGplnAXxo9L4Y8LkdDp2b5+YvBa0hKDnaX4kRcqluk4PQJo3T/K0y+dD14KrptT8vcgIbTaBSIwD0HXtf3B3XAW/ve//KltA13dCMn2EkQ6rYrEJ9ZBn4vJFVvNUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781152594; c=relaxed/simple;
	bh=7qYY2/GyGbT7SbFmTigRR7PEh/Mys7eLptmenrhMSck=;
	h=To:Subject:From:Message-Id:Date; b=W1xIhu15EA6+H3o2kadDQBVnE6pyNhNsNXIc41OUAEES/tnT4lkG0T9Cb0wyqusJZgnSp8pLpswN+mI22gz1g7V7O9dk6eSr34aP9sob0k76chZYq63E3V/xo2MCVnxMOpopJ4eXeSuiMF8VqmJCOE2zqpI3l6u5ZulLrtwaQd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHAhBnZG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHAhBnZG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB24C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 04:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781152593;
	bh=7qYY2/GyGbT7SbFmTigRR7PEh/Mys7eLptmenrhMSck=;
	h=To:Subject:From:Date:From;
	b=CHAhBnZGWYTM0ShOys2qKorw/CVVrGR5Dm2J6541H+W1lHfVF6L8rXEQ5f61Ufzjr
	 sYp/vI6apsP3alU+PPN7uWuZ5MaPcQ+HVHPGdV1aZ2swd1IqomC/9EGJtttrxFgJqz
	 u300UTWHnGLESXZTRqabCk7tQMsp+oQfHIF0HBDTAjPe0VmzkiUWdhTekrGqImq737
	 zPVOqpVmDHhYYtayIsrMeny2xkaKIDsQRD7RLWoPkaTvb2ynw+e1oBLjX3xnELAygq
	 2619DixSMtWXsukTmY/r6+07uZ1pSB3998rLp007nyoW16hGRo8w3Jhw6N5dddgEQw
	 eRf50c4SRG7Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D50CD8C9D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 04:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178115259372.17493.16033633895524141616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 453c773650430280538aa5b1ae07ae2e10fc79a05aab42dac831e499af220f8a
Date: Thu, 11 Jun 2026 04:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781152593
