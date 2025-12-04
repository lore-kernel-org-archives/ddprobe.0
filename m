Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266A4346776
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 20:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764879174; cv=none; b=gJOIV4R4LEWLyWPXYEiPtKyF+EwV/M/t9O0IVM/C5uUv99Rcbj+orDFVP/7gqnaXXsoTgGz0Ka0gAPY0ZDL8sOcHsL5uZ1xHwOF7Rlr+PYG4TzXG/Vm7hPqGsxbkOPXjUZm7bV8/DsPO80hojCo9IaNENmS+87eS8AohkRZbkC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764879174; c=relaxed/simple;
	bh=c48sGD7Mf92fDIBum7dXdjq271AtXuILhjjW1ohfTgk=;
	h=To:Subject:From:Message-Id:Date; b=sOONAWEdnq0/YhIrpxVbQd486DJEBynlZkdRNiBoGYbYTsZq9ABDBxIYr1km+b6Y/CIEnAdIvyWTpVCQUNXrBmpXbvv1eOzDzRaPYxf53vryjxILuFYPLI9LOndN+/lAJDzi4rV/ROGcoVDkhu9Z3mCawfKEi5qkmDjsXreTUoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sWX0P/gW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sWX0P/gW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5271C113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 20:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764879173;
	bh=c48sGD7Mf92fDIBum7dXdjq271AtXuILhjjW1ohfTgk=;
	h=To:Subject:From:Date:From;
	b=sWX0P/gWrsBKEKM/RBLwIEPotMQCtne9Id7GcozlXuDrc3BsAaUObw0++6vmJ4NLw
	 0Oo6jM63leoTbtHSGFVPasusYOPbSCMQIdPwnO16PuC6A8DwuaMsNZeGL4Tvt5EWPX
	 b6xOMmg3WEr+p5N8+D7Ph0ZHldq7c4YuX8/7x8YWFxixZnMGQO97bH06sYCWY9xp8T
	 7beM8MAfEi0mVETe3+OyG3fgRUJxRwQTYKmlKi72S2DjKbK3ou6soe1Ota9yKthvJg
	 /oBOqiVFUms8EjWVTqQmoJRp+eTHkEpciQQbDpjMUa+D/sS7FIYOOEI9BEx5BvAlOV
	 qkgDjxgQpg/Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D757D29FB2
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 20:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176487917361.17335.11034416109954777859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 386076494333654f862d8592eb55f2079391ae798af1251555bddd4070267c78
Date: Thu, 04 Dec 2025 20:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764879173
