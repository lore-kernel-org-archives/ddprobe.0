Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BF319259F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724244954; cv=none; b=sqNLebDJvWDdt6anl4zLEu6ZVwCbH5QVXxB97u8CmrUpzr5FIJ/FyW9H8thFXiO9E3gJZJTGEM37YViBqVDmDeFi5i2BZ/7holMahylcx86+YNsuQtHejsyXDJAhIyRAq46UQ/R2oKE3FFrJAnVc10up/0oyO38ZqTxHRDXqDpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724244954; c=relaxed/simple;
	bh=CrOa/vqkD1sjq1FkExt2Z4F/OmUyJxHE8oESjtk8EAw=;
	h=To:Subject:From:Message-Id:Date; b=QIfkO964ZDdy8ZF3z7PwcZAKWZbISoUdqrW3FXvwwGLeQ2O/AZKWaFQvamBkZufNotV4FPvY3vnr4E6yIFGQBVYk4pKgYbokaQjZsDK1aRuXq96DkRxidwSr47zlY4CjX4kmbeU08RQbv9WUoENJFZWwTTDsWdNxvi4HPWvg5ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkuB6skR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkuB6skR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE72DC32782
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724244953;
	bh=CrOa/vqkD1sjq1FkExt2Z4F/OmUyJxHE8oESjtk8EAw=;
	h=To:Subject:From:Date:From;
	b=QkuB6skRGa6EkA0zFLqT9NKsgnNkbhsAHWjuHWY+ilfy85XJxQtCYoK4r/SvuoaW9
	 FFIUdrBK+BJTEouXJaIaw4YqYdYOw/KNPZqaRNLY/byYVmfzCv5CRU5FyNu0XQd4sv
	 +kNPMytZhzaB1VwaZV7EBozhi/xKum1qMJkKXvUmXLhsXk+LGSwWhdo31ceyALZrFU
	 Yi4EZuHtL+vJZ8DgcfyJSttphY7111+QfoeQptnbqf87ohZ6IkJ4SeyiaAxLh8v53t
	 ue4zqyOikIvhD2uTGcYKLc2u80BOXlY/IKSlnJhtcqiTSU46sS0kJEOo860O/kYoQo
	 x6To82MTbScUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DDC6C52D7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172424495363.19836.18229476969420944348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccbe0b692fe9609f74f0276a7eb9360f4346bc816e44196bf49719072e4dad84
Date: Wed, 21 Aug 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724244953
