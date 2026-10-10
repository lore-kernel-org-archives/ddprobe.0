Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522204A7C9E
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791637834; cv=none; b=Yn4MXP1CVZin7Za5njDjh9Bu4qrSbqMiSJ3dLTfvazSE4QKDhIrYsQHZNOmNSVxDCMJeMgYhEyKpu5zRr42IxAjigSam7VBezlGVqaUm83XyNEaVpa0Po1/9zIyseOjlVXbdjmYSYAzAvJDhPuvz5NJOjNJpljUsWm/070gKIuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791637834; c=relaxed/simple;
	bh=eDI341o9aTp7WPr7NezbPEiFUcmPsCWdB5whqc9MoN4=;
	h=To:Subject:From:Message-Id:Date; b=QKVWKC/Z4XzCAZlVtsGpbG5Nel42BjN8Y4CevRD+aqUWpddO0Bf5hu/IJPwhpHz3JEG35ppnVRoQIiwPdoQCqFtkeyy2OKEYLrLyY5G6cCR4yAM2eevVQUCv30zqwR3f/edoRxdViaLUe37nJQrAKyZ+usPHc7seu84VNpTZLYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCzA0uWB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCzA0uWB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F7CC2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791637833;
	bh=eDI341o9aTp7WPr7NezbPEiFUcmPsCWdB5whqc9MoN4=;
	h=To:Subject:From:Date:From;
	b=bCzA0uWBTa8TeelyhCIsx69IGaorpED1gSjvvqQSB6xHB/saXZ4y4SO59lnzHVoNG
	 iQtpheGMkK4I+eMQcfThYBZeA4rZYpvmGIAU51Nkth/TziukT9VLRqjhRtlstr6MjF
	 zAMfhghySnOsRN0qYwmde4WU0Eh8W4SICx9S96u9/ooEVBUoB/1jYXX4ghDiTJNITl
	 u5cvqnj5Qx0fX+RdVKIg/wMt/Mo4DcOs4oA6LrJTLr19Oj6ZIbr2HyJWBb1o5wuCov
	 jXxWm+hXFBxbam/4ZrbZFPKMEMWIXxB35yx4TsjPvhkjadKumGxYcZL6lZ8yOTH6aS
	 VxavHdKF5EcAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD9ACA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179163783368.7953.18232670350036201759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a80dd20141754ddd54837861dbc9c78ec4154511160075c872402052fd24bc2
Date: Sat, 10 Oct 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791637833
