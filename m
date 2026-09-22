Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E899454EEDC
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790086835; cv=none; b=RwwITa4uX+gUfUk8pPRhUXVJAvAOx2smUI6Yv2kGN/18SGETRGdoIbLQsRnxaflwWxIbKM60E1fGerZDWN3I64tVB+VIjcRfwaRgigSE8cEdXsv9eIADPI8Hpd9n5cY1feRvb3OIfcQXhJ7vnuJy4UFXQOUzlVwJ2xYP3Hfr9kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790086835; c=relaxed/simple;
	bh=wtCXosyXD49M4s75RnLhvApt27OqcQZAi5cxKPKYLvg=;
	h=To:Subject:From:Message-Id:Date; b=EMoGMs7JFYV8VxyVtRxFg6jzSYnF4d/l0bF46/Gv9c8znsKmYkvt3PMqHzdRnwEO8A6EiXl1thWH6hvMrvH26Mpx7oQBWRqLzhjehqF9h/HQ9EVucq7zLyxPiv6DsMtz+Fyoscu2EFQi8cOM5XoIEzmSLLrlk5Xb+RU1ea50Pqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u77IRMqh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u77IRMqh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E39F1C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790086833;
	bh=wtCXosyXD49M4s75RnLhvApt27OqcQZAi5cxKPKYLvg=;
	h=To:Subject:From:Date:From;
	b=u77IRMqhxq03XD009+lgpfwIYkyDwOJWeQpXsG891G/U1pAvrdCe4wiRzI5oUkc3/
	 ffLLBNUOYiE8wJ/pUqKoke5XwRFskX7POJL5QvRZ9lyzhg5ycGXVoAz8WQ5jpknUZv
	 WhQOjenJ3s2iHDALrxvaslp2PtYynqQ40s60PvFQ3oAR1EdNzFPZAamjBeN6lTc/4n
	 3ZoT7K4dH+3Mh9ZP3S3n0J+xshpPfGPh1JAPJuTvAAzZQEnC/m6wP/Y+MzFsJaU/g0
	 y7pHnDhCZu7z8pmNh5UlwjxzPXhBfWCW+0IdGgwwZaOsNyAVNG9QtcgE1SUtdqK3mb
	 xv3s6k7YqB0qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B75D7C982FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179008683372.8766.18047551669612341878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9a8cff4f843d246e52ca3f56f50ff37c98535ef3ddda6ed79bd780f312d6321
Date: Tue, 22 Sep 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790086833
