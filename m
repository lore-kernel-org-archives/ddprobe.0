Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5805126CE2C
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791748834; cv=none; b=BdLePkylHJD3UEa/YK58cFXV+4hX5Z1Q1iK3GnrObBa+WbEGZSt/87VVJY+24LFWI66wAsCwafnqBsR/s93h5qYtYYPX4p+E7hH8+NJmLayRTZ0ErEWfA+Bjnv7UsI7ljCDrr6hvEdHL41BNRu2xDR4L9tzYauochE7hA3ajGtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791748834; c=relaxed/simple;
	bh=zK+w5/1UN1ME7JWbLzANQD+5Oe8DV64mQCKBSlPdyWI=;
	h=To:Subject:From:Message-Id:Date; b=qon1VG5nvi1UEV8a9K3wgxKCTBqMoI2GQPIG/kcbP4BvuZ7DfRgSFQv8OnEWG4Cs3xYusNTFJm5PPCl335nyVyYvZ80U76498T0ZPw7LRsMCoMD8CEeS+0zcP26Xd2XhAqE2FEV8SsACl26BjxtztmOI1q76Dxn717psHXxPtEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OcBALEas; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OcBALEas"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16D6C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791748833;
	bh=zK+w5/1UN1ME7JWbLzANQD+5Oe8DV64mQCKBSlPdyWI=;
	h=To:Subject:From:Date:From;
	b=OcBALEas15ysZHumyujFIqDWiAu7z3FC59s7JkHZvB1cn1lkF9Mj0TvvNnjfd+CEu
	 rjd14r3vNudOAn4o8vnMwchwdO5j5VvFbqYjiNM60WTUSWSUETIDrRT+uLZ+3unoky
	 1YmY/iK2UqdSkrnKRzJmhEu2v/YlXrOeyGYX4ADDOk0yBkjpq8NCkkQuVBlqnuv5qY
	 QT1tDJBT5BOsPskeKk13NPUIJtUH41VuE83FBQsUaq7XfWluwSpFsNSb2DsaY+yKn/
	 99R4F6udSYo6AHMB+kbHVgVhFXUc3yBl1DLCguBVPshBQDmqLdH1wHaoxpGgMWGwl2
	 W2QGGrDB/cHqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF841CA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179174883371.5302.2350001410363504769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb8245d95226c561cf7fd65e6a630bbc623b5777a64196dfb6da02363d82a2a1
Date: Sun, 11 Oct 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791748833
