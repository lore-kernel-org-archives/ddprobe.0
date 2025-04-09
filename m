Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4508925291E
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744182594; cv=none; b=fqAuPQpLRR865u/2Po8+eMVL5wsfuWX++RIhwmM6ljSVO9OX9jqhXXErO8zJjwEmg87jb5iXA0ExBN4xblGAhgZlZpKGi+LXIlD+dCny5aWmsX8WB4VrkYQ2YuB8G97JvKH8zWIvfOM0kU4zwfXlBj1FTkBvnAclYhG5TW0lKaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744182594; c=relaxed/simple;
	bh=q+czLESt3ZuPFbqQWaNJwKHw9heBKbbNJfy9KdEoeLg=;
	h=To:Subject:From:Message-Id:Date; b=nC3cR2hrduod6Td4fZ+Fs3uczRyYptmtcu8I18Z1j7BFFLJM41OwRl/zpkZs8cDfEAqWPowkZM0BI0N9iT4vwfP+HyvyVP10PzSW5MWyfNHC7n4LPl8VZi2IBRQ/NoOmvA5xTuEi2Kkrb3UuGTDoAqWqQ4At/fgFL97CnJ3qQoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oek6FHjF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oek6FHjF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF426C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744182593;
	bh=q+czLESt3ZuPFbqQWaNJwKHw9heBKbbNJfy9KdEoeLg=;
	h=To:Subject:From:Date:From;
	b=oek6FHjFs0k7q3KINh/0TcuHFl/foKVhqo2CTjZx+ZaaMrnPd8djYxdizt5PHEovz
	 DMHIqDyrREDBo3Vzh8GEeTcu8ZToGRApHnzsNhfdJLWP02TQurtceNHDrQpGkz0r+y
	 4QpxSu19sEcgY0Zjg8T1QDk/pC2q1VbriLk4U+wiA5DRfNkm+YWicNDXAQbtOqqIrZ
	 X4gOolh4yY4Hpoh7PQ1EqzOuEA/QX+mbmBmrg526fv/7fvvzEUt6apuHgVntx9QMUN
	 +dgME0Q7Oqvo+f69IKXoq+IfzTIrYUNl4sU4qYTM9iQ6owzZ+1lH42aFoEZDwt/RsS
	 gWUje+FybhIvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996DEC369A1
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174418259361.6934.13858160111605714816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bbc581b9daedd5efe4a11f83c6e19faeabc77c2c0cb84773b51eb714101f204
Date: Wed, 09 Apr 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744182593
