Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD7C344DB3
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 03:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775445334; cv=none; b=AQjOBbI/FLrLddAqrIfYvowrphJB2dQb4mdH3oln4PyIt46+qzikSpHHTeXYv6pBz0I+kotuMwvhgZeYe/PWd0QzuBxptYQaqs82H6eYoQ3GRA1715pRu7Y4QkgAfxysPYA/fOkwoYhoKVIEjGUUyXoWN/DuOLSqm37fwRhnYAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775445334; c=relaxed/simple;
	bh=aoQu0q2QyZM0bWWXQZgqkOgtc6s1mr/TU3CYv8P4iNI=;
	h=To:Subject:From:Message-Id:Date; b=tc75T94+e98Sw5AS62l4G1JZm/KZci/ACf/Kwke1RR+ReVMhSkaILmtYMR0ID/0cLan+TEXLDknxRyNkyfV1qEXhdBE9Y1P5HY8fBDBBB0LDHWM3ELP0F/lUYGh+W7OhgL8bkNciuQCFN/vQArAjLl8war22WBAtnCZq65tmGZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZnLx9TkA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZnLx9TkA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2846C116C6
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 03:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775445333;
	bh=aoQu0q2QyZM0bWWXQZgqkOgtc6s1mr/TU3CYv8P4iNI=;
	h=To:Subject:From:Date:From;
	b=ZnLx9TkA+X0aVtr0+UPk4a6dXMR5FBrB9jEdtyDnNlYKtWJyvMNnpZri59bnDypxR
	 YIm8g9Whv5WoYHlEGSbL/NSLcS72UgsUmddSo6qxnt5DCRwnSQnim3YjQ9pimgwGPc
	 Hzj4K+qYSfemRVnts5zy5Jv6XaXo98T9Qa8qPDfT2xxrFuXGuRpYC1XNxnBzz0z3sU
	 JpokQ5MFyz+7efl0gX1CDG+pyu+661A6Q+mcO3qquxAGBtUu1wug2Hv5IyHwtzYpNW
	 yYUrzh4pccOZIOqXEByP5PaBv4ndYo3QxCY6fWsd7/QF+Es0QPuMn1q9k3lVSQ42kj
	 cLTAGoxqmHvMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2D6E9D82E
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 03:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177544533368.15272.17728428789385514839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14b54e80e8c42560d217fe1b5fab2da0090d78a685d0486de833509099e2e676
Date: Mon, 06 Apr 2026 03:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775445333
