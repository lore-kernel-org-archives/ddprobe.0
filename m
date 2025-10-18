Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B286147C9B
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760800794; cv=none; b=P5B31k1E6yWuZxox7752AESubtWVBzs2iQkJJ0GPY6/fAJ22n8m3ETQfeoRRHCqje5JFV+iY229cVQJvCKJ/aYi/IjRrR4n77IgAuHoGTAyHXlJXqoUSxmAq/bPGFc774KFbyZLgYFlOUONN4UcNgYuu+P+d104akrwUc0s5COY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760800794; c=relaxed/simple;
	bh=gm0RXVZNicwHHpzTF2WajZcOZhd7eonamsl8Q5kijzU=;
	h=To:Subject:From:Message-Id:Date; b=WWytZ6ACHX9LeXqm6TeGQxPz7dkJW+Nikf4PV+BNYbbhnekW71lX6WaFZXLCNu8eMfYgwOOeJjvLyV7vmv04Mx/GLUffZiF+VZY76J4RysXAGJYFJKK5itII0Q2yOYIW95ydq+kpDmyQZnDbW6k2IFx6sNilIQKHVRSd6Y9eNn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=noqzsYIh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="noqzsYIh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F59C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760800793;
	bh=gm0RXVZNicwHHpzTF2WajZcOZhd7eonamsl8Q5kijzU=;
	h=To:Subject:From:Date:From;
	b=noqzsYIhR7+i6XFxR2a4skirq1+nxmkhmNw1MeWQM5C6LxTXcnnWuP4JdKI8VxgJw
	 uBIXvBdqs6+0EHeSg/csk2l0Lc2bhQG0sXOTBpgQeq4bat11YvLsfLFKT0zGM5SrAm
	 FdnWyn52oBpkcSUGGxdQGy6iwKZCO/pl9PDFktLD5E4zY5Y8MFNaBjM5x8THVT5qa7
	 4n8WPMqEv7mL+6XfDx/KHgM+pmYn27n5zWM6TrECDhxMUTaA5iiYXijDaCVQbTfMt5
	 fmlowImxuba7rv5/VCESQwdwbNfwcNKfoLThXMkhS++I87M6xFJVawfAvNvSVJFui0
	 31A5kugDpqm5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AE2CCD195
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176080079357.2687.6011164301486649942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 078afd17fb3073fede75dfd13ec14ea08a7f14fd2c7678c95b9be231ef5a3736
Date: Sat, 18 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760800793
