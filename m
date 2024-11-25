Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBC21474DA
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732566354; cv=none; b=QHgpYbRHrIHvx0aneksF8FHCT3Wyi1K83iZj9ir0gLkjp/f4jgXyWg5pYCVVCQZBKjMog3A+TTY80tz9fypU11ggaBZ8cBeWSPeWFlhpESppBbOKwGk/6q88KXtoi6nE1IUdulhILTfJQqd6eDAve/EHAkau2cxMVhuh3qPBDko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732566354; c=relaxed/simple;
	bh=4pZscVM+hSnrQQuaOmULKgkTlJTwwMTqLl5LgGb6Kr0=;
	h=To:Subject:From:Message-Id:Date; b=ui7r4e/YUvp6ijJk9IEkFefFHtj8nHrRI9ebyIaD7DdO5vMhSNtI/BSCy6dSj7fBMBUgesFCG65MrPHfyeXslLmhGWoI9EinAj01YbesEIsIwuDE8e8GdK3VqWabt/iLhZCjpbz8mmgvVy0f5cpTDA3yRYgunRM43k8mVJFRzRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azfj51vv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azfj51vv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B96DFC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732566353;
	bh=4pZscVM+hSnrQQuaOmULKgkTlJTwwMTqLl5LgGb6Kr0=;
	h=To:Subject:From:Date:From;
	b=azfj51vv7DEhEvCVnhV2RiV22r0GD/xLidDZkmT6NQsQbppXuNAnx3I04vIxF3Blb
	 1CjQiAKxrimVEtupwg3Ra9LUqQhbglMUoLt7vAtqTitJw72wPcwuRhJEz9E8GAm8LM
	 vZldwPBSBBLpes3UUaheRgIFybAzu7AAu+RL0+QPldTUvhpNcBG2pvEUy5GwSmro9M
	 djmdkgc6ocTSaGZHjhLhwJFkZjJsmB8Dr0tjOKMSjOLxDQYQLz1vF2DudQRy+LPbko
	 uXqbDQrJ8IARhivmvjuavvzdRXV96Da+Zpodbmj0LN50i4gpjJpeO9I5Ks9aBqw58y
	 WjwWc3ghbaP5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC53D59D6A
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173256635363.12662.760993812261842940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d950b3009eddb6eef39c92bcd7464379a085b9df94c82c3d7540bafdcf692adc
Date: Mon, 25 Nov 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732566353
