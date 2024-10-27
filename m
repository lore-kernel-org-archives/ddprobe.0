Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E37210FB
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730031954; cv=none; b=aU4kU4zjtFsdYe7haGM6ProlpbCVaTwesWJHuszxJxTqQfVwmqohwaQgVVMZzNK9QnCIzeqObpZKMCZ4EAtx1hkQHgo2DiVt3bKZXKmvNJTUny0SuicUhwQqd0cIv3m96l02UKNiJFPnGB7cibVUbO9JzuYf4FwgJhQWh6tmmzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730031954; c=relaxed/simple;
	bh=LWPYB9YYU/VYdStbEmNnQmtzZlpNR5OFUsVBI9cmIjA=;
	h=To:Subject:From:Message-Id:Date; b=tz/IrtcdwBKjl0xOXtncMmVtOs1lIo/X7mQjUiKvfC1ppnyAiWpG13CIMrVjkg/3X3mu9h4SWu0HPowwP6gjLnc0pVg+r7W1utGXbb513JLoQvquZAmwxs9GVwy3EWiQTBG/F7gA6f37UujgxQGudCKmytWEYn0ai72DdYtqSBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIdJnec9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIdJnec9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F53C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730031953;
	bh=LWPYB9YYU/VYdStbEmNnQmtzZlpNR5OFUsVBI9cmIjA=;
	h=To:Subject:From:Date:From;
	b=tIdJnec9i2JzY0nOlxQrArdTHXvgxzO3CDy6NJDtW05M9UutsjUXwsiLOY0u+iZjs
	 LgtMRVJcUYb8PFKMHaDoDMlWouzVoQuwu5I54toZQrbpoYuIyexK8jztcl6/5Y51OS
	 pQlLRDUJTIkMdIui65dKjPINItddWWxBkrD19aznbrQHVy0Qgicb5aCK+w5WKGZ5sa
	 k4aha/R5fk3Vk6aGNXlSyLP9yzxnHq1kCzH9/7NooOBjyQ3E1+e2IfeJa/OFaa+qvz
	 MR6NSDDUbW368At6bY133iC32FQwtMdpUh5Mt2I5uD8J6RFSYPFBLx+v59sJeYpkGW
	 bLWpZkfZD/gzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BC4D116FB
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173003195358.8348.10305657656226586640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f86e286ca79b8b4a3dc98b4c019a3b24199065dee7238626149785e99b0cf34
Date: Sun, 27 Oct 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730031953
