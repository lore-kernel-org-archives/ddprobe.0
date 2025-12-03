Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022D52FFFBF
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 18:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764784974; cv=none; b=nYfhX9yY3aWbua1COsqrN3ywhI9NkzZ/hJ16yGA4q0wXd4rM871wYdjNO4IsWkoho3wkEL/2LsGfOkfbaQR3wso0Szn7unxIDyP4sV/9Sx2AMPB5lVU+rkRTXxNctvrEu6qrrZXqTalXmibeynra19qy8fkQKobfh61PQhLcd6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764784974; c=relaxed/simple;
	bh=J/3ccjyd3lSqHDcfgncFMzQMfqbu/KVwoIqzM9L5hqY=;
	h=To:Subject:From:Message-Id:Date; b=TxuYv9oUW8j/rO/8GAd8AYWxKRFBlvoQt4ON6aurtQVOpU71ghM+VvvjyyEge+Ej2VNu+NddZO3//iNxrZAsG9sSksTP9XaAx0TMvuP3jn5HVqV10ThDnHPC4pP7FHKzPOtw18FQ5+z4QDR4Mi98wZyDnu0yjctTNudaWggcMZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LX7vVmQe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LX7vVmQe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08B1C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 18:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764784973;
	bh=J/3ccjyd3lSqHDcfgncFMzQMfqbu/KVwoIqzM9L5hqY=;
	h=To:Subject:From:Date:From;
	b=LX7vVmQehgGraIl4lqJihuIrHhxpEup2fdhuFYzBvUP+NioBAJx+JFgfnox7iJ+QQ
	 CugSKR20AZD7g/uO0FMkCoOA/+aRNMj5SpbgsBMIdxVyHx+fjHcK1WvAyyzwzREXFT
	 Otp4lR/WbJalTaaMR99L9OqqltUaiGZICZI60Pz0h9xhdhVyy2VLT5pZ+VKymwHd1Z
	 3kR1OuYNVpCMWcHs3V4PimJvvKRibKvgKhhi3zyZOIscKrBZpeSbwZhzdKj7X16yAc
	 q8uv1OhzaHfAmxzwKigEzNVniLPeZFuiAVdjouF0NXTL/7u3XzgRcHT9a7UPN0eRGT
	 P7qFWd+YMfDVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924E3D15DAD
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 18:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176478497358.31084.13906833168740888772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc698119170d390cb591592a030297b1ed1893414da8239567ab5ad5eee6866a
Date: Wed, 03 Dec 2025 18:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764784973
