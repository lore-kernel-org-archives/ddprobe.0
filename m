Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA910137C35
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 18:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739818133; cv=none; b=GljBWIQOSH4VDlfpwy8JEPV5q6oGRQOMCUlzzOVpUhQbPgWsDUOrmLay3CySqUAs9NQHmy9+G5UyAY0KWtbgKIJENWMtUbdZbR8SV8ujQALe/hHifpCT/GOB4YDHhmYq+vSW/ZjtgmdcQ7SVW8q0Q9ywhxPiXT9kv0opg8tXCyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739818133; c=relaxed/simple;
	bh=RhxFAuBzJR+CPOcHwJIjWWgf65InKIsFTwkPKZtJn4M=;
	h=To:Subject:From:Message-Id:Date; b=U+EtylZsUFZpATZhKTKQ28vdBCKiprBR4Zd0u973osXQHRjQ/5TqcjyyHbn6AR9Kxw+OYIwwpWIfHN41Ip5JaLoXLUTEMTcVs8xCA1WvFTbVzHCySk7zJJxyr3DYi70Gx7z+2x6LV84PKgtJTosfMqWBDAgjxr+Q87w7ZmJoISw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ihpCZMxT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ihpCZMxT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD222C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 18:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739818133;
	bh=RhxFAuBzJR+CPOcHwJIjWWgf65InKIsFTwkPKZtJn4M=;
	h=To:Subject:From:Date:From;
	b=ihpCZMxTyh02vXJaIQjN1sHiC66CwFUB+ZI2y5tWErEfuXvztDth9y2VXfp9dHvom
	 cZA1H0W55R+Zik5mgKoSR+aO7PY+1EfqXTYlsMGb1diOED/xRBAAMRTDny2dHXgCIM
	 Q7OsRfGeMZ/j8niN4N4+5Q28kJUL0iVHtIjTiFx6ecT9o8UNQfbY6lOTxlbNmeYt3M
	 Sr5IrEmRxGRN+6BFH8pfgP+/dZjXxt9mKyTbmb5pIY078IdM6vn6IJS2DB7FtjFems
	 cDzvsefcvpEhzWaknqJ+1IcUYb5WhNscX0rObj/zBCHVquqVZO9Qbv+X+gfS80lrX+
	 x/WIrruYCqGbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E48C021A9
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 18:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173981813360.1453.7098438346540582718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61cccfdd1eaa492cc1ad8e369fb9418bf8df14c861f57246eb5cc0a905c1bb51
Date: Mon, 17 Feb 2025 18:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739818133
