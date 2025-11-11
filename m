Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0473A2DC791
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762876794; cv=none; b=UPVLzBptx+rhT8cNgcpL/OOk6nDrbilyweVPPzrNusiKAdF3grs5aGspVRXMy1WH7bKrOQxR1uJtuIKmWQvZAfpJij7j5B+Oj8O53Mz0UUecnmyMN32NriWkCChfLkkcnLBuetdbxXwVPdAa18AqDltF6u81ccF36mhMmmMIQ94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762876794; c=relaxed/simple;
	bh=tdYK57MYlhb9wT32XEFYwJA9+aMCPL0orqjOaq7sJ9Q=;
	h=To:Subject:From:Message-Id:Date; b=QKwaOMqL3upBfspiOtDVA8NCCYNDdLCLYrPOD0KnsVqXBnxu4K8plIdkdh/yYdgB+Ll9sH5+sElE8rlIlNj4u/wzUN2ZnpxlaeAFLjjy/qikem66AyIJGOaaOpTMXQaIdMETM5Mx+HF+Pw6zaOjD89n7++TIcn75we/7M3CY45g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDOuOQnd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDOuOQnd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C8EAC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762876793;
	bh=tdYK57MYlhb9wT32XEFYwJA9+aMCPL0orqjOaq7sJ9Q=;
	h=To:Subject:From:Date:From;
	b=jDOuOQndW9FDYHOgeaL6C/USz28vwdb6lLtkPk70mIiZ5bO5yUhntX72pjOaxxmt3
	 F9ddISYtLXxcqGDgWVJ8rIzXKrf1fBzpZ2/E8EXt+WmOn/c8BKZ0luy+7xlnKf8mAd
	 Wtp/gSuHb1Epsiw2L9jpCr5nD2Hl1pg/U5FrVSP6oLxTQFtCxfYaM0SJpSE/e4q9Lc
	 RPbnZShs+6682+U9pd9EeHSTZlDKLnlarZudDeYdTGn+/eCUA9eWaDyhOrOVKGkADy
	 6CP2xk+bU6utKWd9tXE6U5v72rQJZKYx3Rpb/1pbkVSBSuCPnUXSiw/GNqySHPy9X/
	 bqtSWd4VoZ/QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E41DCCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176287679357.18029.9347548367072011982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 068f1527688f2389fd8037d3a04a89fd8530af2d3fb37cfb7f16b2c074e208ea
Date: Tue, 11 Nov 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762876793
