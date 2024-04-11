Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C757C13FD9F
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712836696; cv=none; b=HQ1dYqcrBU8isIMPqs5V/EOzmRnF+EDToQE7ztWFvC7rFNmrAv7beOR2Xuekl1E0bxyWlC5VqGPbMumL4R/LubNranJbCA5P7XbTmoMjN4mbq+/fPHGNPF+YWX9mfEjBgp9atLK+mtpzIf76FQfiDtt25YtY6tJjawfTwTLIuM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712836696; c=relaxed/simple;
	bh=PIx09ppdRQhk2ygj/4yxZJ5IpPhN2SD7/Ad6ZJn+xNU=;
	h=To:Subject:From:Message-Id:Date; b=Gi0/ySg2RKsQYPZZdVa/JAz7Ezo2UsSUSp+ujt1IgNdyOlOH3xxM+Vxz5N30B546uXIuAgwMM6UeiEikKKrcKKZpD6WcC7NmxZQWC/EsEyXd44HO53a0cuCTnwXyYatPxwZUiva7qi2wFaJ+7On6CNflriREyCzzvB4We1vc3Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sysCOvLl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sysCOvLl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 727C5C433F1
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712836696;
	bh=PIx09ppdRQhk2ygj/4yxZJ5IpPhN2SD7/Ad6ZJn+xNU=;
	h=To:Subject:From:Date:From;
	b=sysCOvLlZUdhgKVldugq7UQcjS2EW41Yq8QYt9Ezy0kBQPsYDFb8gTLDypdnBXNKv
	 e0jKDMq1klM4SAIyXdKLCSnbsH+3eBHeVTOlQM3V2YgKh6S5krHUE1FJKNe3XKEwTX
	 YRBg6ZlLksVQOUsuDkgwsjxKtOOBjbsNywCZuVhG7w/uCAEi98Q8h0ML9NZbOEc8PB
	 HmqLFul45sQBuoSQ31GGyWqQDUOtE3O+PsVgXrrTkpkVEZgok7xwXxQWqsL7Qr3xhR
	 AI0t1uC13ObbKTELPPntK+SEEixXUSYJkAUML5SGVYADjtR1/kG1o5B7syVto7gt4f
	 kLs0kFO4P3G6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60177CD128A
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171283669638.4670.2299816118681383777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab0f0824e286a140fa32e27164f4745e96043b6bb7d769d0c1a8267aca749ad5
Date: Thu, 11 Apr 2024 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712836696
