Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1661636C9D5
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774220094; cv=none; b=opKCco+LfiRZO+yKNwgImVMd5fC2eVEqFchu7EnVfSBRsWp95B54rc5B9HpdkJJyMSgaUh7PLsr/Czwrb52irEzTHXsYYusFVYE/J7Fip+eycrUWpQMI3XbFRzd58zCppx79E19b8P4bYq/pQUkR1QHKDdUfm1//vU15zjC4L9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774220094; c=relaxed/simple;
	bh=RHxxB0tZa9H2IPzHhLEqB7QtWJ3YqePlsYMQhaCwTUE=;
	h=To:Subject:From:Message-Id:Date; b=QyzE9mS570k2yACg5LF8xtmHS75WI2i0C0DUBWHjzCGKWzg0PXkeyz8s0VNCW6BtxEXvQ3mibs2E/P9eytVKMgXJ2CpbpmSZOESk23IJ+TMNUDzAQP+hVj90Wy7nHFsQRyUcfFpIs4yYVb2vLV4shpja614eu0vr+it8HaMm4J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKpL46sw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKpL46sw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36F8C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774220093;
	bh=RHxxB0tZa9H2IPzHhLEqB7QtWJ3YqePlsYMQhaCwTUE=;
	h=To:Subject:From:Date:From;
	b=MKpL46sw0ocUCtZbnwv3H9dROHl7sIrKLCkqEhC85J7Wenne5g9NUkWaSIaGbVBmU
	 QujsMZYxxBvsfFMm05CiWEma4nujdE0teZsof3mrJ2YXCGW9mP9bhoDRRDnEZHb9Tj
	 HJTFx612hlElfPBAoxJjEAxfqwCDujyLuC6AC7oP+qzbgGQ1duoLbx2faciRVDTKDi
	 ltr1htOEMuGjUPhrhzhtCzXlgAGv12KaXF77hCekmrTO02Eg2HiLJoUjlvMucwNl/B
	 8I6XzhMZtUfOjXHoE1mwMY9OYeK7/WRireVRNL9UCOrUDtYCm6ccF6AALAk5ew8PMP
	 TCLJJaS83l/VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913D9D58CA1
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177422009358.32607.2377496699283385282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fc265175bf22fc2c82ef09ee41edbcf378842587d77c2aad3299cb6d7a54a5f
Date: Sun, 22 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774220093
