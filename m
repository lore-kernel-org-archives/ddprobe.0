Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE83802
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743563394; cv=none; b=f2cPJJr9vQyJcxX0LeoryBpUJitjDFbG6OOB8a7u4pHS0lc64lLQ4+rDxph6gfHcS4pUeRnPzL3TGIPiRY40b0/jUxo+WPG9Nm85Kk+dWi+5YtzIgMxwl8N7lg7oL6H7iQQp+c36OuW1eqrJDTgPeOhe7GUv9/92zfhn5L4REd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743563394; c=relaxed/simple;
	bh=jzh2w04jf3JxF8tqnB5UAhYapPkLlO9Wa1+wRaGDLZM=;
	h=To:Subject:From:Message-Id:Date; b=DaeSfJ+q39lcXYLiDp1JE+INU1qdnQviqqtfyZhEfJCwN7ESSZ/+LlKFJoKlfHd3BoDiNF5c+D28eA9/BjTTyMp68Lfx/nogvcdasWgJ+1w+ulr6ky35C+lAFDXCPOcM9CxlZebGBN7YBNjHp3k9kM/ziFDMqYqD0e9a0M7dFQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oLbJU4H4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLbJU4H4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA910C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743563393;
	bh=jzh2w04jf3JxF8tqnB5UAhYapPkLlO9Wa1+wRaGDLZM=;
	h=To:Subject:From:Date:From;
	b=oLbJU4H4V09MQINP/l6CjRXr2E45d4O1grlceUzchw8wgS89GdlSjzZNXTWDYWRbe
	 jHI4qRVoT4AJuED6c6qGNOXJSi3qCdELzIJEsdgUkRSTr7UBc3ZrSkAEHND1vYHK/B
	 CTE3gKVnF6u0l3DRLAvMWaoe3wWeULGskBdALo/ifK+OL5PkcZ38UEd1aAbv6P9g5C
	 VEKYBMDhA+0Owv5CaWcAmSfi67NhmA5SwBBBgh1N33JM5LmqJ5hSUah35vhODXT37c
	 4DjBDI4BkC+PmNceT6sERZrja0cH9Z4dhI9B3H/fDU4t+e9I1NKOXzCmYJqQpAU8C+
	 vjm8p7eaYOTNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BFCC36010
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174356339359.28135.15542537231010161489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7ed44524451d101540e186a0567f401a344963cf58052890d1e7db001532f01
Date: Wed, 02 Apr 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743563393
