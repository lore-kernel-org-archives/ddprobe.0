Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4166527FB22
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748363994; cv=none; b=rZLUURAWp/2nwLijakwH/C/AZkU0+tiyydkTojoGhbpTm+6E5XuQh1s6uM2vBG1cRvaUnSgvQ6djBr6M4o7s/LqgXIbsZL2QRdRnmBLaoAll47EBMNxTpwezLiz5UCrBwjPX140aBm9Q8ODi0NFOy774cavVnVw0RqnNBdEPpbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748363994; c=relaxed/simple;
	bh=w1kW4ZRqN9DoaJNVZ3l+RdEaNwZ6VotWjfDvuwMjlFg=;
	h=To:Subject:From:Message-Id:Date; b=srTv6qDMKlYCMGTHk1RIA3JbaJA9RUQd5drjv6ABN+cdEXQaRgyH3QyJWJwAs61oenfdxDreTU0xfzxnnCYCl9BlRdMI/gwaWVR34MdOJRA3C1ev/y5KuX7hzg2BcABOp1OtKf+gNKyXmdUTTffYsFI5Lmf2ezBV5JInYYGOb5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LAO/gwKy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LAO/gwKy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31BDC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748363993;
	bh=w1kW4ZRqN9DoaJNVZ3l+RdEaNwZ6VotWjfDvuwMjlFg=;
	h=To:Subject:From:Date:From;
	b=LAO/gwKysPVbat2UoqocqgvGp3tX93Kc97aWUCKwGucPh2vzznKRDolGHOI7rnJGV
	 uS8wen6xRAczeB5oaKdPmkkl0moaCSlZyqmpfz0cNC4walyVXPc22422e/hBURVu4T
	 aVyPovHv4r6AT2muY5+DWIeCIiSzTtMbZRf9yX/vu4sZeIw1KKTOqLbxI5iJrWgwl0
	 q4sUOPoThZD5TSuohI/UUYaxih4A8UWmGbF4lthhl6rEbPv4WYAbT97X+qrUSxjgDs
	 cRDeMwEN4iFZj1DX0rMUGTGkp/NJ/itZZShdLjNAnSQg0u7DtMipxdQhA2LXHhj1KR
	 T9ODuE2xik2vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE18C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174836399357.32237.14446817336506607388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dacbcbebac4803bfe54ac4b4fef6d6eb235e613b95a49a2dd68b6d0981c39d5a
Date: Tue, 27 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748363993
