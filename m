Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351531DDA1E
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745450394; cv=none; b=YE7Ly/I0wz9Sfh/XMkuZIH3WeNwzKSQHJKZ7GWqT/IOz0lmilQM5GQDKxV6rz4zfQUwic7HuVHZpCyzRF1JbS5En4rPy7QvCUCmL1z9vnnd6vkn4d3Kb9J+7Y0G74QIV0nBfsonnru9K8SNvFtltVbuRwni7rmEz6JzXz9T+J4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745450394; c=relaxed/simple;
	bh=BWzWVsaAPFnUtGBNLQ4pmVbjKUE7cj5uUOv/aYqQc74=;
	h=To:Subject:From:Message-Id:Date; b=kBX8Z1JI2/rFd4UK2fNnegnudy7DoyVABh547Hmnxh7FGz6d6jXgpBy5DfYGuPwZ3zwvvJZrm0swwHgLlO8tJfnKsM8WIOHkIRRJaZa2f0OrI5stOYNulahYGqe6RW1myxo3inOyeRfBB+YUqfsuuiSU0Wgkc+5FEFs24DasFr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=csqJ9dTT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="csqJ9dTT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC72C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745450393;
	bh=BWzWVsaAPFnUtGBNLQ4pmVbjKUE7cj5uUOv/aYqQc74=;
	h=To:Subject:From:Date:From;
	b=csqJ9dTTmr6a5gzPEsVKTGfe2cMA5w3mzHxWPQmYUh3o5Q+FobnidvOW341jqKbdD
	 rTUDz9BHJGLfSiIBw+ruK3lFRi4HhLAvqqnqFoiTkdLtyvB7DSaI/u4cU8jrPyhdx0
	 Snl7ERRw6PCYNbIMGCbFr9kRuhFpqaswkc2AgCYy0GIzqFTyW31KMq+H9RNDvF/Uyg
	 S+yDK4f7JNMKbIeVV35qQvzbbsUFFdESJqfLE5uDZ+5jr+jomoCjKLyVo1SY+UYNlR
	 SL5mrWkdU8e4/Twtv9mvxdmVdoQ1iOMn5vBVZLrKqnjUiewN69Mp0WE+kTRhbfHbRh
	 cZ460E2V+crOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E336C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174545039357.10962.11875276681234715670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af0b1e0f57493cbddfe4f81b74f2a131d367cb560da40801ce90e32d6bf59e99
Date: Wed, 23 Apr 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745450393
