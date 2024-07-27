Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29237381D4
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722071154; cv=none; b=n+AxZmSzFA+oj+GBl3ZUa+qOq7k0fJB5A1kwQGAPVPpCBHdXdMJm1BudkRVjIelqy6M/f5wlYXXQphHti+kEOaRhpxnbZ3KJkYOJxjOBpGRPBcRoMHEE5pe1De1G3lQkJuxgyswIIwhFiM+/LzzziKg9aOQTxKnXMwFBz6KIerg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722071154; c=relaxed/simple;
	bh=AISgv25lcmqN7IcLmagjW70pjpg7Q73l1g0gMgBqpmk=;
	h=To:Subject:From:Message-Id:Date; b=SpLbyCza2xe0sGQvASag8BTur2We8KX9OLbvob9syVf/X8buuBZLuF1su5OhPG7c6/tZGVKlG/7tc4yr+kqb+zThQzeO6f7OiLM5XTJA4uwMrOHLDkwzvaIOi0pfzR6KMhf0lu0/X5GMst+OHtpKg9jdkXp7TM4Y8bRA3GxEAxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=diWmfp1j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diWmfp1j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4531C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722071153;
	bh=AISgv25lcmqN7IcLmagjW70pjpg7Q73l1g0gMgBqpmk=;
	h=To:Subject:From:Date:From;
	b=diWmfp1jaaT0aHcw1zQglZNmAXmqQg/DMNhK9GlJoQBgzbBNhFh4sK7Ld8BzQJFIC
	 0RH+Zs0SoaMcBQz2rSoyAUfgRmAvukWaC8lybTjX+6E/CardsYgMU8StiSanKWcEhl
	 bAXFlUo3+eIArdDzxiTsYVclZp1AkJW9J2sSCa7X3/aC8fWSye0athICzKCknj8Or6
	 WhdyF05Rz024Yb9FFZh/lT16KrDn8BG6oXkstXt7my2OvA3UAH+DkzmsDFbEr0vUnE
	 bWVZ3n2deayHdThNHgs1kzNGVfjeUNffiEDCuM2eBgrDCCAsYeFztwBdNlx/fjPqUJ
	 Gu7N35rKls8jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F706C3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172207115361.29450.15158151935119470111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22b6ec764d0a383648a05e1fd893c0c0db86ad74d0f8f4fded91debf04f58a5d
Date: Sat, 27 Jul 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722071153
