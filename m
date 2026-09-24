Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C81D32A3D7
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790223034; cv=none; b=YZ/GZMEBNnO2LW2It2R6xkQWDnZqKxm3/v1B749PrR+sXj14gJsKpFtlKB0s2fR3P06YEWa2oDxaMRapD17Vwkcp7qZoxEnPfZQdZ3cSb//b0VwpxcqNeT4xSUCLjs0IKovWuZRB/ogBpPh8avlg2kHn7WndGp8vtX6ZdS2iE9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790223034; c=relaxed/simple;
	bh=56PAhkI7VZ9o4KPRUl3dDYo/1m0c2DkaTLVl600hnW8=;
	h=To:Subject:From:Message-Id:Date; b=WQq5dHuY0PdXYi0HgDI53GySwNrwEtJ1SllcrZ5+P1kpCJS3UiyqJUvnirWZuz5YpmxkdWkz09gdBKlF0hgwUPNEWsPJyeMItfeJg9ofWIubdizxS4otb5l2o+x2AmU/AGzkSotIbifYpGHrjzCUHhSvaA+/m2RnrfHDQgu+62E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlV4G05v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlV4G05v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDA4DC2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790223033;
	bh=56PAhkI7VZ9o4KPRUl3dDYo/1m0c2DkaTLVl600hnW8=;
	h=To:Subject:From:Date:From;
	b=AlV4G05v5Xi7jgXgpKCnOD8BGt5fVMZFjsNg0mf87oWB7SAwmUT8TR52lidqOVc+w
	 YbHydz0mBUcaBjWxlVVJfL5x5dZwdlqYy+W/dvngIO2QNApJ4EV+0iNrelBOS4eDcA
	 kg0iZjCYq8GfcAHcXMDX4A584MUTr0VwIBTeIVsfnR8JHz4ij9IYC8XODYOHRkUxps
	 3atAga72ClXK8QByIG/giLVmkNE85wDu3TadIDH5KyN99++J3xwoWdU2qGPp1GGQvx
	 3jKWH4sybCX9+TAMVBl2hsvyjZUftwZMxBqsNC4YleIid3hRe0xg4aeVr1cXWbuCpR
	 GQJd7y7dPY3vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B2CC982FD
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179022303372.7245.10952804257822259888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e36de009530da17a6080ed718e1933e252395cb0cb9dd04bb146fd7bf72b6ac
Date: Thu, 24 Sep 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790223033
