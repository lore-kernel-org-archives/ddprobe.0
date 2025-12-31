Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327411C69D
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767188634; cv=none; b=TvaN078X/QaMbzz7SpaSpAKOj4W3f5g8QXwceXKHBgAscGp/a8XaoF40Yut6tJYGpT7utkfn+W1oTeXoHJkVvyHJWqUvlm/JVEnXOIy0b66RRbP7gsissSEmBhaWXEzSxirex0yQReYcuhMBYgohuItCkRYtl+Um9lwC7wIiLx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767188634; c=relaxed/simple;
	bh=7cL38YhkpqoTjj/Rr3UIpkw4JhOKXySzQpEIqounCDk=;
	h=To:Subject:From:Message-Id:Date; b=n/lqqGNng9pU991pFfIFTUQD+c/6TJfumIPTcj9ilEsBsG8WqlwR+RgjrF/Wd/6D7pAvOaa4BXZrJ/KepnV4/AJBqwzlqb+9eLf0OqCEuJYsUSCD32BuQcyt09eJVlDUCQ/ZR9Bs0u5a17vdN87kryzFDBoGnIk5RXyt/Rnw/Ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IikwluKM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IikwluKM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A64C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767188633;
	bh=7cL38YhkpqoTjj/Rr3UIpkw4JhOKXySzQpEIqounCDk=;
	h=To:Subject:From:Date:From;
	b=IikwluKMFwu1lAE/iY9m8/1V5wLvQUufwA+i3IeZHF8M7UMg/+UUWQcYqFmYjI799
	 xWblUlFIXUGjRqoWOZc2bpr8vBIibB1r6FPs/PYxC/EouTusdiEesZOHgBAhqhYrBr
	 Ka/faq9UJdYWeOqIzTmAH9WNm5jsw7O5QBqmipZsRXjNMmAyfZxmu5lzV2D0rEIxla
	 G+oA9yWJWtLFIgmrcNtOfcb6q6OvlGanrhFY8nTUziP+mxvqbFgk5Sak6IQP+h+pE2
	 NcOLwn85wsgEhaKZDAocV/frE6ZItoTzLJediMY+5+av7i2Z1qwFB+i1NdixhTHckq
	 YcnXGhEJ5TrdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92096EE6432
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176718863357.13530.16081945292047019140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6486ab7dd8dd7b713a6fdc0c50242b190de49fbbe59a03648b3b56fd8d2a60ce
Date: Wed, 31 Dec 2025 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767188633
