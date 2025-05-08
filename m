Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300E384D13
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746711594; cv=none; b=jqqYFTbw74IegQtDM1mOL5pv8emNJ5uGo5LmURrPXlcVCoXxzQQ3QUIoOoEghnPLUEHKzHXN0DO6n0EGIh6NdX98WLy40G2bq0Z3qmYnPaqU6XJNhf1fORaXtZE6xZTR/e7EzbcfabefoR6+vPV18GscsTVUzKWKrWChT0U2RsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746711594; c=relaxed/simple;
	bh=9kjFHQu2IaoUdM/mhPvIcx4nm5KT+UA8oJB9pD97ZJQ=;
	h=To:Subject:From:Message-Id:Date; b=mp5LZhet3yqDWQ+WcA//JR1hJRn7bkILq7t1l9qFomNIQfG2AXys0x7mFLnObHq6RU4HZG2wOibjyYxfDmYqN7u2S9WcIp+dyHkDNFKE4tETVfQL5QaMj4r9WEhpVevtOKeO9XWH4foUDlDDTsdraxoqdvkZu3ahPMFcPyQ1sMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f5YwMeZL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f5YwMeZL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E14BC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746711593;
	bh=9kjFHQu2IaoUdM/mhPvIcx4nm5KT+UA8oJB9pD97ZJQ=;
	h=To:Subject:From:Date:From;
	b=f5YwMeZLpaqJOYxDozqMJYZRNxCaMBQ2BQDNsU2VakjEB1PRVxFzcWYgOHs3I8O6C
	 VUgxjb1ikWBcUcYsAwDIja4LG8p9iPOG9JlTKryB+Q3i2MskPp7RFcUiE5LhsDwgli
	 UYqHvWDf/5mRPIGmvJlUgguHqjBKcSANAVxiVOsd9VKKd0yqSUBXlys6nUv+82fymr
	 TzMo5Z6/WlHmJMMiE0uFlSX+TLGNc8A/jC3eYRxGMhVuUd+PJ0G+DUDudwjkolWySs
	 TsUNuZAHewoXUb/e1PUtv2U8IY1N0azzcwYMk0CtJEpH6gs/G73tbPtvqYpwdD6Ee9
	 LJSvIsZTt7L+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7C9C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174671159357.7360.13034152641712495738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7540d4e4c989f789492ffe6f1787821bafeec2dbcb929608a27e6f9e01ecba1
Date: Thu, 08 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746711593
