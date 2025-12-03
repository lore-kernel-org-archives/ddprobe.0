Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257D12D9484
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 21:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764798174; cv=none; b=QFApMRql4c3RCD0h6VbW2oq4ySqwQPF3JvLYjkE5ckhdSD43RmRrg9DFZe0J7W3+1Zqto8j6i8HrZsZiEOb8zvbGwjp+u+5zCuYhkjrKFcNmEBGXx2f7lab3Esb+rO4NCibF7jEPRhy7MOMCUK1kLd7GkKmoe9yqGifgyDovbEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764798174; c=relaxed/simple;
	bh=VEJU9aIPk1Ig/9F5Da3Qgp8VJzhzHYp2l+4Wf08hgos=;
	h=To:Subject:From:Message-Id:Date; b=agYQH8YCvH8Z/0qX0DWr9Nn33g9jZT+wWCKl2CcoGeC1dH3oioWI6mkDI105JmRt5Z1YvKXKp5plIH/U0PsEzUor/+cws/mZAm0eHdHfIpqY6YBzxi8UijtYLYBL3U3uujWkigKm3qZYBQMfbMVRQ3ko3wO9fLXHGEyACE2OYsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pcCSfJB0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pcCSfJB0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A9BC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 21:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764798173;
	bh=VEJU9aIPk1Ig/9F5Da3Qgp8VJzhzHYp2l+4Wf08hgos=;
	h=To:Subject:From:Date:From;
	b=pcCSfJB0QNR7J0P0q+fQapAzn4nCEsBGBpMrbVIG39bhcWkQ7D+Ub57dFC8l5B4E4
	 /jReTFhUjClK//rOjzFOulyJPsKm2tjEz+ikoz0WYEEE7quDG41cOEyedhd/PjPo5F
	 NMyQUWOtqkuVHAsHSGrrBW+ocJglAmpIpJi7YFr4wiqy46GoFeiaQC0D5G5BqRU8WY
	 IX+zxhTBx5aFXxiwNWqwXVlTBremyKQjdsvaE8woEzGZ3NUHmemijXWHnRYCE5nGCV
	 7OcC5l3bqBnhagJDK9qQjK00eSztTGL0/oixgaVd8Xe2udjrnH0xcKaxDx/RSNqVZd
	 t2DhHvmFcGJJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9353DD1BDFC
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 21:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176479817358.27626.5636255945509184223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d92b529a60b8f54117e2651af5de2960c4ae947d245706751edef4df0c375ef9
Date: Wed, 03 Dec 2025 21:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764798173
