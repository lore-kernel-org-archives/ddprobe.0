Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52160144D00
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 23:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720568183; cv=none; b=uuyxY3YkKMeEr2Cxqnmpcjka1IafDtfcI4yl2wOqCVaGV+qUBzagKVFPyrzqS3Oe7Uf8CXlhojJq/HqmmKx/kuOuOyISgQQW7owydRsUb9Oo+P6B4NjNZJ032rh7DKcGYdO9g+GzhiWlzBsfkVbj17ZjSEBtegJ3Z8KN7DoM7UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720568183; c=relaxed/simple;
	bh=io9sXgWU/ZG4q4QHVPfu9zHOpKcd4xFDKHfDuA7JD8U=;
	h=To:Subject:From:Message-Id:Date; b=SW+AijVc3RSQeK1IuJ3HdHXUdHFutJsd6TfrBbsCEYANtPC32LiM4tW1kcZVIjjS0+fI+6YL+RatUwKxBsLA7BtKqjwYN/hb5Tyrcog4aJ0u5S0AJcTyweW39QNMztHELKPhBbcQsKEeF+p452Ginkp63StfTYSe6et+6QqAWEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUIbETdI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUIbETdI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7159C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 23:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720568182;
	bh=io9sXgWU/ZG4q4QHVPfu9zHOpKcd4xFDKHfDuA7JD8U=;
	h=To:Subject:From:Date:From;
	b=TUIbETdINn5MFdVOmsK83HgFwj5Ep+4T/suTuLCBpVRS0b857ggoxyLRu8yrpYsH7
	 rytEacEx1ps4LXkk8FLrPxl9WQ27SyhE8PwjblnOPakUv28L3PqKzLvHCQBfHi1wSk
	 qBYkQUvHeiFEa8y9miDB+WLtID8qKp24sF+gIT7KPkfl2qH+e+lHn3lgopnWY5h1Bo
	 xRElA6M/h07q2K1dC6FbD8H3I2Myoyog71VV9GvGge4gHTltxKGjF6ui1JpLOGQpkj
	 7EK+TXE7xvIjX8aH4LXDE6aKyXRSWlmVJvkj6muw7e3F19Ip8Ogj9Cvdd937RbE0mr
	 E1l5V/An6akjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5CDBC3DA41
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 23:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172056818282.21436.512522144715444801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46409e0ea0ff78a51a0d8d80526bb0e14d2397b127aa2d7f07a295d705233034
Date: Tue, 09 Jul 2024 23:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720568182
