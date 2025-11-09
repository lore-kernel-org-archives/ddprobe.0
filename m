Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8701DF994
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762675194; cv=none; b=hSoe6FS5L0AItwit0gf7BvarrhKQkd6nATwbDBA2XPmu20B2v8xkUUnY+Rtztvsjt/1ZFBx+PPQuIz46UxqKUg8Ugo8SCJVaYA01FsWO1ryR+gZFMP8iVC/fzKoyRC7JvL49KGrsVLcOZ3GAduw/Zha5YWT5fJt8aDcT8jyIIoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762675194; c=relaxed/simple;
	bh=WTRrdaWEqrnPLep4gEUs07jNgmVrz2aQli2DWAWacm0=;
	h=To:Subject:From:Message-Id:Date; b=dvHRjQJei+60i2tKovOwt1Qx2x3QERJrI9eYhOKuSRppsAwd7BtkyProSN6mx1pYsmv5f5dwYrum0GnsMYkrWtDEEmfG0LibUKdkrNmNTEn1vXYVMuKnyP9XR4INQCdWyKoc+RDCMhnc5doga69sILj9LFxfmvkUHXuVf2OpBds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N72Coboo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N72Coboo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98F2BC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762675193;
	bh=WTRrdaWEqrnPLep4gEUs07jNgmVrz2aQli2DWAWacm0=;
	h=To:Subject:From:Date:From;
	b=N72Coboo/vny96qinXwjhVPl4Qe3xSXrFhEnVdqhQQfV3WUk49FlzJpWa+eAyvqJ/
	 V7uL5DkvYzzd9ncrNyP0UjN3X0CkMIfKf3ZY/NljMVEL+l6pwKIgEmmAytli87XSB+
	 nvoT1q84LFKJGXAMsqhKQ4MJ0IAFi9psiORId9sgAG5tfF08GIIflkjgJxNe8nG/ho
	 ocnnDtJU/yqmazjN7k3umANesqZX1qyH+nnIT0AEjGDy4PQILoxi+SVsWyLACVJ0Tf
	 DR/eHDJ2GVQ70hHxHggItckg3m8L+6MdbMQtbozsx8bb/IzpeeX9Kkrncx8MVhFFER
	 bKYmvYMVSNRkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAFDCCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176267519357.20250.7431779717709838559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef6b324e39ceffc1f797b32f5c1c8bb97226d6d83a63c60406e00d18a32850b5
Date: Sun, 09 Nov 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762675193
