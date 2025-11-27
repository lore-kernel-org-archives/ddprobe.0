Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175DB4A0C
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 23:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764286374; cv=none; b=L9kmqtgY6QerOFnxauflByFjWmkoWdX9Ah6StAutnZOXuU3DwAZ+03G0chaDdYC8cZzaf/yHTP4S1YjWDAyRL5WLez2m1NIAYhrxzdJBk0Xkc47z4PNxwXfeL+fKUzfhJBVyz3AKOb01EF4xTeTvnQpUG/yEn8+m6FFCF5wMb7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764286374; c=relaxed/simple;
	bh=zUuRS1Dn+w6AcbWeq/cNNK1GdnLo3JXTrJhkEccpV1I=;
	h=To:Subject:From:Message-Id:Date; b=Ojz08rPacW/IwupEG/j5fjP7rYYnu7KAIxnfT7iuxuVeaskodhUgLzCNmBFEGyWT3ACx56gF7TH+dJxFCXYHADG1YPmLDH9JjjGsZaKZKdWwknWl5G568Jh0jHlqpv4IMALOs7vY/xY1t/HxEFwJ6VastjR7rYMrRP2wIY3g4bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6a2uUJ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6a2uUJ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DAEC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 23:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764286373;
	bh=zUuRS1Dn+w6AcbWeq/cNNK1GdnLo3JXTrJhkEccpV1I=;
	h=To:Subject:From:Date:From;
	b=X6a2uUJ3ngRkUaQlHnSLQbKS6NmkRrpxVI0wrkigkmtmSBIQRru30Ge17+xAgpmiF
	 8An0Ee4tkQ58YAQ2pfC+Mes2ptt0VkkMO9ERfXUiZRhd54UoKIupFmTC/k4P2JfQlR
	 WBqtfGOxMq4PhUEGc6C2YgojJ0VNJ4Z/Ewf6bri0tHBoGs5FC30LJqNFROcM0PM2I5
	 1pwYYihMOKKQRW1y6HVhxX6gW/j2ieavcauQ3sFObPj852Z7lbx4mOU190qF70jDT5
	 aVGF/fInhcGYN+efJYaC9t2TIxmqo4L7bW765mqY/7Fj8DPBm1UqShNtcEwl7TN7On
	 +XkMTcXxLzxqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969B2D111A8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 23:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176428637358.14726.1927132511447665299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 122261596a3b6850974e6cda61e0fc4cfaa3310fedce1bbe0b2bdc9ba24661a2
Date: Thu, 27 Nov 2025 23:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764286373
