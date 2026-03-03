Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD1633DEFC
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772573094; cv=none; b=Bw14Ph/va9Rf2YLaWsFLAL96fhcmqftpuo5A1WUt0iVAPXrWSGQaZSR3lNX1Jql9BPAfXO2Bt85oDqVtfcc3V8AdIbCUxtdTGDmODmXf8NJ02tCf3eIO5+hWnmHvJR/VneXJxiTChcKXvst5/HGWNsRS7jxrxU3SA/gZbWjYyG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772573094; c=relaxed/simple;
	bh=dNfH7k2dqeXmHLYBfzZmf6ITmubZnUC5GFunrv/ViNo=;
	h=To:Subject:From:Message-Id:Date; b=KNRcRhvhSHEFMMVOv9pOFeUbGe6mc4gpC2C30pQ8B0eEDax6Sg2IsNMqviG2P+667/RVv3RV+cfTrlFzG565u8shaIXjeDN0kIGniMjEsoVp8OdLVNkasze5kn8CEcsHsyzqsA/dRwQQ7twaDF8Y7uBAfHUm9OOPzI5l8B6R7ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cAVxJ85O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cAVxJ85O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E54C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772573093;
	bh=dNfH7k2dqeXmHLYBfzZmf6ITmubZnUC5GFunrv/ViNo=;
	h=To:Subject:From:Date:From;
	b=cAVxJ85ON459K3gEkRnJDdgpPRJ19AqKp9tr/nge47wZIGQVA0dw+uZ+IGVzZB7bj
	 9BUymBJhUz9eXiqxTifZybbExKNW6+ZU4iH5yJ8e50a7DlGpVXfhLCC/E/XMpjxqgz
	 SHnEyUs5l17H4PALBdhy8dTnPlfb6Squ4RUlnm0E2SGHRQoQ3q63wvzVTDA/niUSqA
	 jr5Sipy8JOr2mZgF3GCQ0Ritm2slMpiFuOvnmWvOonDvheX1YkUWovXyYLNf5oRnd+
	 vW/oMhP7P5LmEFEIsKINCexR7FwhsC9a30mcCeSdVv0PDSaBOJNQSKkgIFm8vRqjaF
	 xYeSjnV26c+MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DFFEDEBF1
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177257309360.23686.17733608812680104900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9002896777c4dfc4f14cf525dabef0bcaf7274e235d2d6c3f0cfd027b77a3ab5
Date: Tue, 03 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772573093
