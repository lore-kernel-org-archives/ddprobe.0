Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12ADE36B1C
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707483497; cv=none; b=S5K9h2IYbj1cMvUUHelY/Obu8KagrIu4/JGQtIIEnNKWdCujq9yWObNiOXgtisBeDzNLE1Q8x29yVM+XLkOG8eCzjO5jLNZXkuL8uPz1II8glyOQ+aZiFrVO/Ofa6A4esjoZ1JAqwS5iJT1AACL+dqxysScF8QpH8EegIB/8wcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707483497; c=relaxed/simple;
	bh=q1E6y7s2KNdEdVH50koly4CubutyQv46cNL7ESmxVJM=;
	h=To:Subject:From:Message-Id:Date; b=VR9UN9XTNhyWVxuPT6phGFQuyo3KvQe+7MBheTQeu9nVkooKJx+avTA1BffxKoxu1acY+UTClKBHGSo3JKCikj0v6x88YMV/vFHX2hOABkZhCmmfCViXIMVoAxKI9zABJYd++zOCAXpApHm5QEDT1Z5wPu3oPBn6bqbCv/opGH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgYiDGVy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgYiDGVy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82A2CC433C7
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707483496;
	bh=q1E6y7s2KNdEdVH50koly4CubutyQv46cNL7ESmxVJM=;
	h=To:Subject:From:Date:From;
	b=bgYiDGVyzLd/OfyFUJVGIPPC1P41WVsWnS9/eKB/kVMfvDStuA/PxxtZmGxBo5x7w
	 6BScwlMFZ8u/1NqE0dsOuU9/JjDsp5+pAP0GW2dLzjbqYpRXWEOqShm2KOhFDmfO+4
	 4o3z5uMU6ZSG8+gtZvF8gWEYapAgiufss8z/WHfHIiNCbemlNrvGNLoUkSt7av6UTl
	 MqhXyVr72jztiY7BQ/JzYAWJHosXGnSxwmgf5SZeadEikTCW7ItROVKDr2gQelrD2r
	 3oGvRpOO+osF03QfXTviDmU2yLA7YCKWA9tbCuSG72A0Y6b0ucdXK2gFAZTyvRmjdJ
	 t05tztxVN1z8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67FCFC4828F
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170748349638.9564.6714057124537213993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d0499786ac5aebda85f472130b9a59486220ccf4501e8818990b98d52d3f75c
Date: Fri, 09 Feb 2024 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707483496
