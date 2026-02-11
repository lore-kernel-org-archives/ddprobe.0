Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B5A1DDC33
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770780294; cv=none; b=OFoSicoVbgpKzy/w5xG24fbVSKlaWiac/RsQ3+Ju8ljST6fNp+C7Wru9bPp/38x/f8+Hy4au6aliTAcgIoqdN8tmBMSgRjGdBJ1W9WgqbC8UbqLdRGAydIGhXWQIa2AUfOThmuID/An4oBs3RWWOrShsvmE5LkI59uPH2HQ7wk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770780294; c=relaxed/simple;
	bh=G0ueupH6a2owu6En8RpO+yW/PesT7oYcWlrNpOdBSSk=;
	h=To:Subject:From:Message-Id:Date; b=uPDloycnkBD0nWnrb0W0BZmTYlkbAGvDCXVaLD2vsVQqcyqxwwIlC0IKPcy79mNGw2k58nGHXKek6kkSJfYmvpLPC1mRzGYdyQxN79HyeK7TSjmGUO6Lu91+OyNUHb57nwlS1DF1VzPvruN7C3cCW73c9vUgB3+4Z5IhOFWMVV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GpWqDnG2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GpWqDnG2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C881EC116C6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770780293;
	bh=G0ueupH6a2owu6En8RpO+yW/PesT7oYcWlrNpOdBSSk=;
	h=To:Subject:From:Date:From;
	b=GpWqDnG2akyOVcxGfK3+e1yLqeYf9nsjTlys0apaPEitfIS3zzk25TYb+pQaBazjS
	 qC1yUeBmqP0VIs7GLEfOONcke6vVBkH7WqAK/JqddFpJATh+f+2KIrKbalp/XfYfML
	 sDRyuRKys9RRGPT9iplgNgHYwqSksMcJMQkbT8JOmnx5oI+8hmPo6rOSZFZ9owN3gH
	 oUVYCdsZ3+OSg8b4PsciPA5JcUqat6UEK0VC03ET795dtZKGit1OIlndW7sZk45Szk
	 p/OOnzQjBiqg/waqzcVSvavAkvSFzMvfzdDl6QZARtaipLzy6B7AdikJOIZfhGeOK3
	 WIHwePbNlfQRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCAAEB595D
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177078029365.16076.17885746542693790638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8ff86a7dad3de111d16ca2dae2aa684f434ef30dc4df94f357247c09fe648e4
Date: Wed, 11 Feb 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770780293
