Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACC236D50E
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 18:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764441175; cv=none; b=StlXX8j5LMb0nFK5xVd7M3HVURBcssLiQrb2MAK09EIMHzbcS1KYTkWgv8b4tx5eh7PIJokKk4ihfPtFLYwSH8PhRrcugHHrvvG+6rNNKhOjgoFC5PRqeQ0TC+Ti8SMxXZJQPub90P+J9UOmimORWePSwJa+PJ6e/ZTGxYGeujk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764441175; c=relaxed/simple;
	bh=XoZ1IV09zV/s7pn6C3ey5M3pgcsulg8qiVuMonD2TnU=;
	h=To:Subject:From:Message-Id:Date; b=AEhyFMpt3TqnfgLP+7pPE3r0CCflZh915PN+W786ROrkitadGGrXZYcruisRdZLbnydoPvqM+kT8csVwNEUHPZyIQcv92zYSy0VBuH9lbkOTGiY7fWCB6d0MfqBWokv1Zi4xmXExeKFXvjk4DywTHXU3L+odc3CaCMt9OpHSsTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFsUgl7C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFsUgl7C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DE6C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 18:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764441174;
	bh=XoZ1IV09zV/s7pn6C3ey5M3pgcsulg8qiVuMonD2TnU=;
	h=To:Subject:From:Date:From;
	b=lFsUgl7CY17QRsirbkejF2UGImQWUGmLDSw7ie6y9t1s40mAlkXaZ+y9a3jvMkRZu
	 v/XuCcGFjDM1Y6xXPPwjkhd1xyQQWuhDebuhkc1aI4FEiiVIb3VVYxczi4v3BLwnwL
	 CfKl9tGzPtQeTveUok/Myo6kzzLo6nu8c5a03SWtDVuoUvQWLc5W70S19po+lRtPin
	 pj/nBq277g7waxKUFJJijn80WGD2gJD133JK2G7lPLhrJHMWQzsk/DA/tGQ+8J0iub
	 d5pyK8D9Upun7nCoz88JX34pZJy5uwgHIOfJ1UnWNqreiSsewpFuPqUC7lh2JWcKJt
	 HCGuqEzQQAGLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97088CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 18:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176444117358.17423.9972366082083005308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfbf97912d4b68d9ebf44534fb99728e36c348c51978b6d35228dd84e0fcc951
Date: Sat, 29 Nov 2025 18:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764441173
