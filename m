Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2659A2566E1
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746202196; cv=none; b=h9YuxmqoDNUt/BYyr+0HYvqcdXdhoWNqYld5fNGE3sHnzVkf1VyUUC/hM051PEMjViSv8MvEHfx2VecEd8AVkaRxzySKHZwdkDfEN/HEkBOJ2WV/5X6Gvl4rU2QCworfqLiwUbXdyk7cHprWcd1Gpj4VLp4Q3TWI/PPNU1gRgTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746202196; c=relaxed/simple;
	bh=4/iOXyKbGgt/N38QKYwzYpc5T3zs1Y+HhjtpzV8KKlY=;
	h=To:Subject:From:Message-Id:Date; b=anVghBVd6not20a17EBN9UVlTRPEbbPH9XEOWFgMnFL8XfVNCItl0SjgD9jKgFQs+nzcsscZ+IiDTG0sT6X+3YfdI8bp0PqYIuA6fy2I0NiJAzpZcZUP/b5j97Ex3w/ufJgtdB3IYb7vZtcwJtSs0gBhC5Do2gJfOeX3+aIkn04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XiUWfGYU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XiUWfGYU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0177C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746202193;
	bh=4/iOXyKbGgt/N38QKYwzYpc5T3zs1Y+HhjtpzV8KKlY=;
	h=To:Subject:From:Date:From;
	b=XiUWfGYULcQk8CQhMYUQMLrkAqo+bMPA8e1syn01Ufun5kABQk/FETiIWTbN86YNu
	 jilSnWo5s+8FnTS1QvMoEWEHj8uD0hzQxs5j3+QB/W2cybZiLTY5Pok3YRVdvkoLIv
	 rCT1BcEIxFVy8H1rcsSTH+RInz8emHuhTfpQZDRgpFUImniBGwM39Ex7NbOhN8yH5z
	 +jc9elhZO00A3v5Y7YDjpuY18Ls0a9TOg8wrZ3B7KHHfgazsvTUvEiJKP5gSfFl+oB
	 ZNm+4ZyZhAaX9Wknvoc+z9TQlnZhXTXbWjsNsd1XrnbFBPAoQzxAjZqxykSQB52MuZ
	 Jg+1pwZEMNySw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBA4C3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174620219357.17403.7764505491624841569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 940e6370cd05ee405441fc8f2abbe7d088d387c8043da8d6a70a77fb06087cb7
Date: Fri, 02 May 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746202193
