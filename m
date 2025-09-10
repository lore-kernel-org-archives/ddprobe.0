Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F27E31D384
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757464194; cv=none; b=rKuroX4QPXiuPVKof49SADjQ1IdVsMKcIPuSJt5PAcmMlsX222hT4bXyVwwyd7JWFI0Hcp6wuR1QJOGXl7+FNs5v4qhRL70cbAGEIjBzN5sH2BiA8Got2w58o95L5NBYGoEGD1djpkF3d5hCnnFLdGdVsm9bIbHlOBLYq6mxlh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757464194; c=relaxed/simple;
	bh=o3VQ28lDaXsxlRGyGgwQJ9DLpDJ+JUmHJ+Di7Il2VUI=;
	h=To:Subject:From:Message-Id:Date; b=eGFnYAd35XY3T07wsYUHCnak6DjgiQ2QnAHJtdH1wOEuR+wjkPd3qT5uv4xdJ1YTVATRW2Q+4HRyH7hekqc73AGMSLhUYijw43Eb1Ps45MCUAjvKwEqTTne3yALQs2y+QIpEp4BKs4/tdShVC2uP3NGqixVTMEM5VlgFGjc0nOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnVZ/GIa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnVZ/GIa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83FEC4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757464193;
	bh=o3VQ28lDaXsxlRGyGgwQJ9DLpDJ+JUmHJ+Di7Il2VUI=;
	h=To:Subject:From:Date:From;
	b=LnVZ/GIa/h0U3sGf1mUmuR1T6PGzjNkKboBec8Q4kbiXlSavKjyMBzBGOnzpjlSYf
	 3jcR3e92ZA6cCEt3jbljWuD4MwEAzRf1kQeHrCn4Ls2mMrnWQpi2oAZR0vIV2Mt/mE
	 +2EGj+srOr2vA1I0aXXjWBrOvrOLdbU+ynpK1ebDJvPuSgXwlk9CkC005cs+JzJ3j6
	 uU1g8QdqMltV3yDMlKQ+dUkLoBK09qOpXIwr5GGpBPz7A8H/aBEjtjRTJ39HWumXoF
	 LWYF1bn+agxakIgW+S6zZt3qQn/x+sOVIkImSI5tH89z6XINuTmOsmByiLPU7jrXZ/
	 CB1B8Vo7KnJIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9389FCAC582
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175746419358.8716.10720271552641712542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a390bf45d430675996caf5b80d9a298a228f1f2fec5cdfc7e30a92cff34fc9ca
Date: Wed, 10 Sep 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757464193
