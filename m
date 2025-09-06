Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE8218BC3D
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757122795; cv=none; b=Bq3zv9JpgqK9V+CAl/hZI9bN0N5c6fNE8q8wZWBhdmS9FXnFqLx0Tla+dia3P8UhHQKN7Je6/tFE3i8dIiZaoRXfK+pKofOozqjrM72j2fudrP4GOuBjHeUwh8z74CUf2qjBK8xAb/jxs5vLoh6G2TPw9oQ00SM3omj3aQ9JOpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757122795; c=relaxed/simple;
	bh=9ySgP+oRwIk1cjWIJmMirCsQ9B/L//2WWhwGQ8cYoko=;
	h=To:Subject:From:Message-Id:Date; b=AfxDyjaJewqYuLsRHrqnkJFymKT2XvXn5ip5IKhnEzoXxXGTzMqXFp4RsTqTWL0/HpMlYZ5W/+n2xIpd/tszx2Z6qQGd2WYwnegbD+3F0eTi5s3b7bLemdh02OoY6LuRalTgzwKgiQ+6oHY1OiKwgHu4DCc5ZNTaL1fEH9C1mBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgoVfhd+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgoVfhd+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6D0C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757122793;
	bh=9ySgP+oRwIk1cjWIJmMirCsQ9B/L//2WWhwGQ8cYoko=;
	h=To:Subject:From:Date:From;
	b=mgoVfhd+/JDqEh5BbifxyVcFOxUPmfa4X2YV8yep7IQuH9p7se10ePD9U+THl4xlP
	 UiLx9RVlqxtiYZpbIT3T1NMbRYsUrHXK8azNmLVeYd+/LBqr4DlOjuN1Q0d84sSrjy
	 ofOiVgLM1dx1UnEVw8SF/BtPgfOa2ZBTF04ziMrqZJw2VSsUqOqRKmx8KZScq6xX3p
	 3i3Lg2yCeGIAUSEa9p8b6YOyoxvtixBgRO4/WBsac/XKhIpWJXcwNDDiv/ZqDcautj
	 gJdGDQrzSHf75M0qg0CAOlyGHnilg8FVwy/h9DvdOGWCl0TTVQdkJbaLHOo4gpINvf
	 IiPsZGmQ3Sq2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB36CA1013
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175712279357.12794.16295802794814908843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da2bec560a9c376834a0f3bf1a5044ba3a120c75e8e8733c672aff6a3d483ba2
Date: Sat, 06 Sep 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757122793
