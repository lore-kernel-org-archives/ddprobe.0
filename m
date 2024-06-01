Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73566208C4
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 09:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717235663; cv=none; b=g8sdnT242TACpEzq+VNaUAJPkRdgL0KDS76yzsV3vcf1CH9GLWOoYXdqG+ooE6epAAYyoSxykpNCtU9df3tzy2Vrop4ciHtxBsojcVeSDgpHHTn3VmgUTKZCYtYNWCm2A9hj7kuuIQyPgI4+xN1hJfKKn28THs/GwPo6K/h70jE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717235663; c=relaxed/simple;
	bh=cR1E+3XIYcNIg5IIGI6/k+HAWVaGsbuFZEwF/CiK1Sc=;
	h=To:Subject:From:Message-Id:Date; b=lad+gn/77jzggAtkrAoVwRytrQJkmhuhXcW4uAUcFqCYm2s7Y9CnCcVPtlh8eCkrNz5DV+UXx3aiZ6g7TXq3rUK0N6s7Mg+DWPkG6XqO1TRAEaFhhCk8OMInUliQkxMjJ6znU7tahEjILoyBAqwQ0TyABhYY0AL9Kj0uYaH3fSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pV+/gqEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pV+/gqEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC247C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 09:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717235662;
	bh=cR1E+3XIYcNIg5IIGI6/k+HAWVaGsbuFZEwF/CiK1Sc=;
	h=To:Subject:From:Date:From;
	b=pV+/gqEsOyASEpXe3/uomfMDARif9M8HKznMHtBNnT0/GBi2GrOlmkLvT4b7KPG/O
	 1IB+MZKWpV98U1z3gHHkeExZko7iwtKXfc1XwYnqIXwenMe35nqJxlIjFwV+K6ID6y
	 dmf7cWP3GO/3QLuHOHWADfuJnkXxHUGdU+zzIaNTppKv9/y1TEYAeVYXayEjmcm9hD
	 LR+Pn+Y5wuQP55qfSqxL0tL4yfqog5sRTnF5gVN1KU3KtkQl2UBa7xjSe15/C997qw
	 Qc5Ac2+xDnEJs4pzaPAw1s622+T75r8q1wLm0DDWXgb8DhH0LqTkIvWnodxTerskgA
	 D9q/zycjMc9cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C32FCC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 09:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171723566278.25786.17296042332419163374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43fd1749cc8aa1eecfcbb855a7778867ca8c609d7053943485395bec0a0b1ae7
Date: Sat, 01 Jun 2024 09:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717235662
