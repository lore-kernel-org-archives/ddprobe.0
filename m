Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337B01A01BE
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 19:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776196654; cv=none; b=KqZsJDOS0h9z3uMM080sRvZFImQrQ31VdJtJsFHRCevYk4ZkbdpOA8z5vqtBUhQJstMWYQKs7G7sGLaVBIlw3s1iRyyrpbHiCWl3UcxGXrTW/CNnV9QTZnE0mH6un0J9TjVs915noxE4Km/y3RqcPj/7eGJsBrU+HGLgLG7DUMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776196654; c=relaxed/simple;
	bh=7URio0jL2av0Rc+JT5JrbEGAnnGmn8u1Rce/sLNTbB4=;
	h=To:Subject:From:Message-Id:Date; b=ZaWx3LOyXFd4IWwI3AUVTVJ0iS8u3u6k6lpw5PACBdm8MnH0gWLgOajsr8sDvYZuloo6Zry6HMPOrmn7HHXLnyPixBqZMvNmui0wh7StWSWTcDh3DGl/EQLNOu1IJ1ezf0qo6sHps/QNxbIazNf+tO+52AmC7S65+N5MALbGZw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LO3jF7II; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LO3jF7II"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFEEDC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776196653;
	bh=7URio0jL2av0Rc+JT5JrbEGAnnGmn8u1Rce/sLNTbB4=;
	h=To:Subject:From:Date:From;
	b=LO3jF7IImgmwzUVWzY86BgyYdvHUz+NJK8VohoyihO+/ytX9CILgWWdOjJ9aFZqQs
	 orVgqBimtAfCtj8rJFhJ4i+5x3vJhrmh+euGDrRWqk/ITGfFKBtxhkdsFf2aiKPTut
	 vh9BeVK0Al/wBEaNlGBc8dqSQh9/L+XFLajhqI7XB9/PPu2CKVBTZo+jSSWzTyEecV
	 LnUZ6TB8/HvJNBFIM00m53AAOopcGahl8uZHMaMnIODYLFKv1K9KFgJq6ebDOizypz
	 siCp6u5LUFP0bcsJu7a4ZdLsHoS+FYo2kRCPetbBWhvtCHw/0QxJfuTFmFVHMWDa26
	 OK5pgVloGM9hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8B3F9D0F6
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177619665368.5096.6698649774936174768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e23279761af2aeef7ed513b02eb8025c5a2e6f4e4ca317759a404793d385b2c0
Date: Tue, 14 Apr 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776196653
