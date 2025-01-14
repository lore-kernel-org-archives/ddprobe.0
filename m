Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9CD1ADC75
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736849154; cv=none; b=OQ37U9mA9fW2vSVrGMv5FovQcg/luYXyO0TXxYqARGfvKi5ndBdFB6GHb76DwCp0ziHXtAvZDmPek41dvFmZrifnVfH3EtRamRyGpsyGVmIj+ajYQP9t5bbxIPr57lg9SfOsuQKuZrr4HYyrAYpV99kyhU4s/exxVnvdW5NX+xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736849154; c=relaxed/simple;
	bh=LUCqFI64AywcGRjIBhQKulKBnkgGrFFqUH8e525AFRU=;
	h=To:Subject:From:Message-Id:Date; b=hA0XyUnUZu2KhfiEol3ATPMws9tujTJ6JpGYnkJdKZ9nbIqJgBy1txy65CrPms7uqxHIfRekJFn92cD/3xHRh5SXic0S5WEG7MmM+s2JCvx2xcXiWQOlCxSXW1ppxgZukZ4f9cP+ScqKScnvGtyxhNR7+2kKfOal5/23x49yFGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pLyTrfi1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pLyTrfi1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD3EC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736849153;
	bh=LUCqFI64AywcGRjIBhQKulKBnkgGrFFqUH8e525AFRU=;
	h=To:Subject:From:Date:From;
	b=pLyTrfi1au2FJlkUB5iake/ZcViWw4e7ubyAyNAGwoVwiqUPoo0E6uyNfkYOeShj9
	 CTEXFC3ZdahDz5gVHs2frtZO6IbXinKZJTzqOUpQ5mCfEE4x9hbD6nNESi9O7J2TIY
	 9/4gVXCPkcVKItbE6WSTpwJAyOBLwiLFWiwdBA6aTQ+0VoAZuCsrvf+Z/Np6zbnbeG
	 /O6ksCArzkVdFAkZIBD0/XY+f5ihjnuLm6lOzqmgIChwic0VcifiQ4SJ8UkD9KpuZ+
	 ffRavDuNVJ0qX2rvbGETE7LvzjDTBEr61nigbho/+IL5TBSsdhh6Xg2HPbfRzYD90W
	 VKbxsmtLs2ZBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91640E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173684915358.20651.16653351660311952757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c05b92e9f984ae7d320483f0065a6b200969c9df9210c7d672a15932e12aa68
Date: Tue, 14 Jan 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736849153
