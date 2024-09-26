Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2143D15854D
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727366754; cv=none; b=CjPFahUU8U1URrjgCF5vBLggVBuL2h3pfJGkP0iMqA54pclxSDJsuuQVCIh0ujL92UBfL6TJIj4rc+olpu+6qWbfvIOd39o3+blfc7ppLcfCSKVxsHNcO7rGEOaJ6Mq8RtrI7Zy+WTOJhv1rpS8nRTA2Onk/NHqvelawOsAsxPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727366754; c=relaxed/simple;
	bh=57ImqEC0mDgEMU7pkOziqGD4fP+zv5j3KAD2B7jFIFA=;
	h=To:Subject:From:Message-Id:Date; b=B3jiL77tR2kYknjjJnQqj5u4QEeBr/pe7aD8YtKl74VFdEz6WTgE7R7u3GF++4b9Q9Jcjbl4q9O8ikqw8p5WDrga7XZXtx3RKH8ZNRJEpBONhvwlHnyMQu0SuDgwRk31Z2UAo9R/zjmE2neYkpMkFZoaeKXH87y+3YI24AGYq8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fR6NzXXv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fR6NzXXv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE693C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727366753;
	bh=57ImqEC0mDgEMU7pkOziqGD4fP+zv5j3KAD2B7jFIFA=;
	h=To:Subject:From:Date:From;
	b=fR6NzXXvBVWwPLz5KGnZ75EU4uNgsc23fVs9X7Q3C+QZfQ6LvhmAtGdqdJYQr/ZaK
	 YSFdYu5SFLEj/Fjq9k8mtMeoiTxU6DG77SAhcQfpAC70UH+zOnJboixpozP+sUdt3E
	 ZjIgBkz1661QcxYuiCe+N0KQ93LkQvCKqhEvjX03N5/sej+e/EtZhNi5A3Ds4pFgZn
	 IK70bHiRSQaoD7pNQWXA6cYKzXkxXLdzXGV/g4nkHD15a+mraZhYZy2cy4ZxcwRfQ1
	 G7KLHITZhntwVc3H9S1rRTkCDtle6XqVBzLF/acJM76I914UlFZnsBSx89xpsAxuIX
	 ZVS3UlP21KABw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF42CDE017
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172736675364.23887.15928533742214585788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 346f0fe0f795cec54cef0ef4e1587fa7c2330d3ebcfee4eadb6ae13221d5d4b3
Date: Thu, 26 Sep 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727366753
