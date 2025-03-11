Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3017125DD07
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 20:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741723734; cv=none; b=Ih9rdxlYBqd/HKWd9hTI9LGJeTglw0RdTXuB6Peh1sRv8kspkRUPo6rGr4poH1iTHJ51GvoahNgvka6hznuqRpL38naFi7JWzayWZSuqrL0YialjxM1deApDrfFtjhAl7BtYTvYEA6viSbvcFKmAThloSTsdFUnKebSp3PTjopU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741723734; c=relaxed/simple;
	bh=vUXYpzlDNF6rZnpL2qtJyHbR7R8RmLFbANpCAOB0bXY=;
	h=To:Subject:From:Message-Id:Date; b=TViHmmR9YNDbRyhiOW33Tbn47YzjIo+oL/4ao6uFDIz63iuT4fiEymjqVaqoDth5wcqsM8XG9DIDyXDhbglP2QJqVVaZ5J7N+Mpap9ySWSaZkZlK29KjWnBkHq07xAN7uN2YyFiiA275JivtMCiD0dPSaxSgpaj7GzG3Zs07N6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZdwpKgf3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZdwpKgf3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FE9C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 20:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741723733;
	bh=vUXYpzlDNF6rZnpL2qtJyHbR7R8RmLFbANpCAOB0bXY=;
	h=To:Subject:From:Date:From;
	b=ZdwpKgf3iANDOEaNvG0gQEx+rTTFkedZ2nEuxhYWaKu0JKYdGbfNnYkis3q9KNJKL
	 gqZ4nYkink2KnukVkdKhK28oAM5FMC9tqBY4yGy+2Y5hGszMWMhDVK/XOGTIDzq/EB
	 wwgJR8OuUa+o9+BV/sHzlkmlHOq/mt8EhhFkupjwYVBqXw3KRv3jBtT3mZTZIofwde
	 6qDQbDDcDB/Rf8aIK/vdMpp5dURFpYSEKHR6RzqnbIiahS192OtfzvsXB8CtAY9vgz
	 sslXg7+GZ9uCydEMhDOSRjtdNLC/5dZx3VsTjJ9s9wfHHazQJ13TCFi3rMkF9IWmN7
	 j0T8CbaKFrTgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90049C28B2F
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 20:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174172373357.21449.111868975000621790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b8edcfd0715dfda34bb3b401c9081485ff58524659dba1037a06c2b889376ac
Date: Tue, 11 Mar 2025 20:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741723733
