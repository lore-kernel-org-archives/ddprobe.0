Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EFB818024
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762995594; cv=none; b=SeHHQ5UHQ6RvfrYJtXzCOaKI8rZ3ZV+BOBDanRw2lsiI3lEEJEAAXqz0tiP3+jQXB5dB7heJqDbHAQgYxZbUM1he5u/Tr976d3xFYeAQRGCd58iAwREdi8oH6oZ7B6qRse62eGYs/tm/M+fmUpMA0oDSvsn+giTKoEpYSLJDIsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762995594; c=relaxed/simple;
	bh=zk0+PasHQ7sElqJAmZ0LB5F5EcHS27LZuHmWTwfUcRM=;
	h=To:Subject:From:Message-Id:Date; b=HixWty+qaznoQVBe6SjhEqEcg59LeZl93RNyal6RKH1XT/Qv8dLpDTt3EQCs04eLX0p5Q4HIQZHfSr/thaF3sTCIo1KvQ/0Z4zmHflz3MNcbIii+VqRUSJHZzLuX5diRZiP67kushuovcnCN7VKZ7D+zuNcGFJXIabZqwk8ST3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CiE03prw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CiE03prw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1B6C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762995593;
	bh=zk0+PasHQ7sElqJAmZ0LB5F5EcHS27LZuHmWTwfUcRM=;
	h=To:Subject:From:Date:From;
	b=CiE03prwQCKcVSQlYq8WTaJVIJ3SkrRsIOvJpDTgUUnpmBjfdg6FO1rvl+c8xxadC
	 q8I7lylWksmaWU0nl50AtV6DPa6TLD2nEkTnuFw5WHf1NJmqEng8Q4rut74P7DWr5j
	 ORmJRVzbnUH+IsEEh1oiAcko/9HvvXEGwLpdByz+5F/QLUvRr2jI6CZyq8jAnh6fgi
	 as03BUB7vCTpZMAgXX+nach5wnhUI5UhvIZScnikhuXnAhQtbin7WcGL1R1HtNPZLH
	 QTLH8Su7oA+V6l/0ykyQZjAY5PxmIdoYpeEjxVch1qpUjc/OX7V2XBTlu38QBJo0Ee
	 EttO5hCzp/YKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90135CD3441
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176299559358.28886.12273655811797498448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27aeb000f2933f2ca44f9ad370c7a6a03885ce7f21c50c88cb035b328559e59d
Date: Thu, 13 Nov 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762995593
