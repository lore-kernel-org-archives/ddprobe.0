Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F07F3148AF
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762250394; cv=none; b=GTcOZCIgf3VQjKq4Xs0nFQNsqTVfszmXjU0Q5bE9EaWfSoKVCImooBPxlJpzZgC4uIcEztseGZ/sgV1gEOGV0LAwjplg892RJhg9LiRlxylCl1NnXhIfFLx61AJJZBsxI5hLdlPxn6tN4yx1KxYzgcJ7XCvd3NQDiTjRPN+lOBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762250394; c=relaxed/simple;
	bh=d/PQOvmE/nqvKWWB0/WqAPuwUXQfNdG+IkztThXKQqI=;
	h=To:Subject:From:Message-Id:Date; b=QVcvygjZQQzIOm7pJTW/XEBmY/uA/IaJWBpeQpVQ5qvtH9nMw5HTMU5+xSsb3ub8CdkOsKk0gyrXbjz0s0BRhOupu9wkk1lrt0qtBgZZ3fLaCFZt1xBzVwPgjTrt7FcH5zzLlzz25li2NFbdG/6Psj+ItrMesZmlkEY7wX59NIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJImZfzb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJImZfzb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2597C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762250393;
	bh=d/PQOvmE/nqvKWWB0/WqAPuwUXQfNdG+IkztThXKQqI=;
	h=To:Subject:From:Date:From;
	b=TJImZfzbrrYp8vXL81ucXRd84ylpp2wjLJlmgy08JN+34HK80/cTaIhVwZB+9TSCL
	 Ycs/D249loY4B0qgnq3flIMAt0g2oiwE4muzBKUayRCUZGte+XoDRehJ2jofq44w5s
	 To784OIpzDGA6JbDq3OaJ9iHopViJjm3zTiGef5tdjIWVE39yKV4RE5DDiQcWGyJkn
	 410yuV/H5YDrah23NCgb/GPG2myzJKXBgFVaJPnZU2VvHBNgWrffX6ptS47LhT8A9P
	 IAM+Q8NCzlyOk+oyTd8Gc5SOzRRCc61iPzquvHRzxcs2PwmdRN16YAjCK89JWVujXG
	 BbEamedVpr0Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C5ECCFA00
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176225039358.5606.15399865720898876111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c69a0e4789f2aa2662cba5a62b332f8fe5eaef3dd1c7f7a9f9951f05c00bb56
Date: Tue, 04 Nov 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762250393
