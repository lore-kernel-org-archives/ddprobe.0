Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31ED15BAF0
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726116954; cv=none; b=o/0rHk+AS7OaDqfp3Nafu9V/Ow4bytI84/NCMkl68ryAJBOILogrWA6JEoHH82L7Cv6/AoBmgJFcmsfAMXZjlc+inqz66d/d+eIcwfWWCwSqU1M9IJUQAOxGZg8oNPH+Mg3UjZL2IiFarxt/klS4AXLw/qlSy9RnWmCSAmrpDnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726116954; c=relaxed/simple;
	bh=koHgA8/tlwBEC5XUboHMX76bXPhUhIKek4nX6CYhgE4=;
	h=To:Subject:From:Message-Id:Date; b=EQ8Z834ee4dbqqq7ax9qmhSlZFI07tN6xngUnZEeuU8WfDfz6Urj/kFS5kBiQeHmO4To8ua9WvXjd73+JdolF/iqT8o3zBq8Lf7CEhgoIF9vLXyh7Gfdj05ycZ35VfKX/tcuBIR/FwcGNPcs6Jt5EsYozSuCGI8yBoOY8v6uV6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHyh6x2t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHyh6x2t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A30C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726116953;
	bh=koHgA8/tlwBEC5XUboHMX76bXPhUhIKek4nX6CYhgE4=;
	h=To:Subject:From:Date:From;
	b=kHyh6x2twfU4SmImb1a++kLiJqVu0SEf6vjsnQAo6Ou0BRhsewwnWDs17Bb2oJpY+
	 1d9TBYH/AsaMzz7+7xlK8MbihDgS3iZrEDs03EjBnbb40+0tQ/DYqM5nCxkalBDLGk
	 Ne/gJHJGd23cVl4jOzsVRb2SurixB/MpyU/hpgPbyxy/lVJQNzvchyYLNZwh7bP9wW
	 88WYKP0VCK/4AsEG4H+fDJcioceLfPMzEulVhrl5TDfOLuhVhtQW6EQj//oxiD6bZB
	 TyxYtpz2TEsCBReJAE4o4eeyryk8NYqE22gLuBt0IhflxEmR77k7dM+U6jR5+1oqYu
	 Pomp+FzC8XTRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FCBDEE6440
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172611695362.18844.16396090617426714298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d49f3a9d8e5e67877c0df42640c4d65e1f967784d855d267c169d20b782343cb
Date: Thu, 12 Sep 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726116953
